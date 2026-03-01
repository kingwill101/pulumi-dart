import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class HubAndSpokeNetworkStack extends pulumi.Stack {
  late final pulumi.Output<String> natGatewayEip;

  HubAndSpokeNetworkStack() {
    final transitGateway = aws.ec2transitgateway.TransitGateway(
      'tgw',
      args: aws.ec2transitgateway.TransitGatewayArgs(
        description: 'Transit Gateway - hub and spoke',
        defaultRouteTableAssociation: 'disable',
        defaultRouteTablePropagation: 'disable',
        tags: {'Name': 'Pulumi'}.output(),
      ),
    );

    final spokeTgwRouteTable = aws.ec2transitgateway.RouteTable(
      'spoke-tgw-route-table',
      args: aws.ec2transitgateway.RouteTableArgs(
        transitGatewayId: transitGateway.id,
        tags: {'Name': 'spoke-tgw'}.output(),
      ),
    );

    final inspectionTgwRouteTable = aws.ec2transitgateway.RouteTable(
      'inspection-tgw-route-table',
      args: aws.ec2transitgateway.RouteTableArgs(
        transitGatewayId: transitGateway.id,
        tags: {'Name': 'inspection-tgw'}.output(),
      ),
    );

    final inspectionVpc = aws.ec2.Vpc(
      'inspection-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.129.0.0/24',
        enableDnsHostnames: true,
        enableDnsSupport: true,
      ),
    );

    final inspectionIgw = aws.ec2.InternetGateway(
      'inspection-igw',
      args: aws.ec2.InternetGatewayArgs(vpcId: inspectionVpc.id),
    );

    final inspectionPublicSubnet = aws.ec2.Subnet(
      'inspection-public-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: inspectionVpc.id,
        cidrBlock: '10.129.0.0/26',
        mapPublicIpOnLaunch: true,
      ),
    );

    final inspectionTransitSubnet = aws.ec2.Subnet(
      'inspection-transit-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: inspectionVpc.id,
        cidrBlock: '10.129.0.64/26',
      ),
    );

    final inspectionPublicRouteTable = aws.ec2.RouteTable(
      'inspection-public-rt',
      args: aws.ec2.RouteTableArgs(vpcId: inspectionVpc.id),
    );

    aws.ec2.Route(
      'inspection-public-default-route',
      args: aws.ec2.RouteArgs(
        routeTableId: inspectionPublicRouteTable.id,
        destinationCidrBlock: '0.0.0.0/0',
        gatewayId: inspectionIgw.id,
      ),
    );

    aws.ec2.RouteTableAssociation(
      'inspection-public-rta',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: inspectionPublicSubnet.id,
        routeTableId: inspectionPublicRouteTable.id,
      ),
    );

    final inspectionEip = aws.ec2.Eip('inspection-nat-eip');

    final inspectionNat = aws.ec2.NatGateway(
      'inspection-nat-gateway',
      args: aws.ec2.NatGatewayArgs(
        subnetId: inspectionPublicSubnet.id,
        allocationId: inspectionEip.id,
      ),
    );

    final inspectionPrivateRouteTable = aws.ec2.RouteTable(
      'inspection-private-rt',
      args: aws.ec2.RouteTableArgs(vpcId: inspectionVpc.id),
    );

    aws.ec2.Route(
      'inspection-private-default-route',
      args: aws.ec2.RouteArgs(
        routeTableId: inspectionPrivateRouteTable.id,
        destinationCidrBlock: '0.0.0.0/0',
        natGatewayId: inspectionNat.id,
      ),
    );

    aws.ec2.RouteTableAssociation(
      'inspection-private-rta',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: inspectionTransitSubnet.id,
        routeTableId: inspectionPrivateRouteTable.id,
      ),
    );

    final inspectionAttachment = aws.ec2transitgateway.VpcAttachment(
      'inspection-tgw-attachment',
      args: aws.ec2transitgateway.VpcAttachmentArgs(
        transitGatewayId: transitGateway.id,
        vpcId: inspectionVpc.id,
        subnetIds: inspectionTransitSubnet.id.apply((id) => [id]),
        transitGatewayDefaultRouteTableAssociation: false,
        transitGatewayDefaultRouteTablePropagation: false,
      ),
    );

    aws.ec2transitgateway.RouteTableAssociation(
      'inspection-association',
      args: aws.ec2transitgateway.RouteTableAssociationArgs(
        transitGatewayAttachmentId: inspectionAttachment.id,
        transitGatewayRouteTableId: inspectionTgwRouteTable.id,
      ),
    );

    aws.ec2transitgateway.RouteTablePropagation(
      'inspection-propagation-to-spokes',
      args: aws.ec2transitgateway.RouteTablePropagationArgs(
        transitGatewayAttachmentId: inspectionAttachment.id,
        transitGatewayRouteTableId: spokeTgwRouteTable.id,
      ),
    );

    final spoke1Vpc = aws.ec2.Vpc(
      'spoke1-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.0.0.0/16',
        enableDnsHostnames: true,
        enableDnsSupport: true,
      ),
    );

    final spoke1Subnet = aws.ec2.Subnet(
      'spoke1-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: spoke1Vpc.id,
        cidrBlock: '10.0.0.0/24',
      ),
    );

    final spoke1RouteTable = aws.ec2.RouteTable(
      'spoke1-rt',
      args: aws.ec2.RouteTableArgs(vpcId: spoke1Vpc.id),
    );

    aws.ec2.RouteTableAssociation(
      'spoke1-rta',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: spoke1Subnet.id,
        routeTableId: spoke1RouteTable.id,
      ),
    );

    final spoke1Attachment = aws.ec2transitgateway.VpcAttachment(
      'spoke1-tgw-attachment',
      args: aws.ec2transitgateway.VpcAttachmentArgs(
        transitGatewayId: transitGateway.id,
        vpcId: spoke1Vpc.id,
        subnetIds: spoke1Subnet.id.apply((id) => [id]),
        transitGatewayDefaultRouteTableAssociation: false,
        transitGatewayDefaultRouteTablePropagation: false,
      ),
    );

    aws.ec2.Route(
      'spoke1-default-route',
      args: aws.ec2.RouteArgs(
        routeTableId: spoke1RouteTable.id,
        destinationCidrBlock: '0.0.0.0/0',
        transitGatewayId: transitGateway.id,
      ),
    );

    aws.ec2transitgateway.RouteTableAssociation(
      'spoke1-association',
      args: aws.ec2transitgateway.RouteTableAssociationArgs(
        transitGatewayAttachmentId: spoke1Attachment.id,
        transitGatewayRouteTableId: spokeTgwRouteTable.id,
      ),
    );

    aws.ec2transitgateway.RouteTablePropagation(
      'spoke1-propagation-to-inspection',
      args: aws.ec2transitgateway.RouteTablePropagationArgs(
        transitGatewayAttachmentId: spoke1Attachment.id,
        transitGatewayRouteTableId: inspectionTgwRouteTable.id,
      ),
    );

    final spoke2Vpc = aws.ec2.Vpc(
      'spoke2-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.1.0.0/16',
        enableDnsHostnames: true,
        enableDnsSupport: true,
      ),
    );

    final spoke2Subnet = aws.ec2.Subnet(
      'spoke2-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: spoke2Vpc.id,
        cidrBlock: '10.1.0.0/24',
      ),
    );

    final spoke2RouteTable = aws.ec2.RouteTable(
      'spoke2-rt',
      args: aws.ec2.RouteTableArgs(vpcId: spoke2Vpc.id),
    );

    aws.ec2.RouteTableAssociation(
      'spoke2-rta',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: spoke2Subnet.id,
        routeTableId: spoke2RouteTable.id,
      ),
    );

    final spoke2Attachment = aws.ec2transitgateway.VpcAttachment(
      'spoke2-tgw-attachment',
      args: aws.ec2transitgateway.VpcAttachmentArgs(
        transitGatewayId: transitGateway.id,
        vpcId: spoke2Vpc.id,
        subnetIds: spoke2Subnet.id.apply((id) => [id]),
        transitGatewayDefaultRouteTableAssociation: false,
        transitGatewayDefaultRouteTablePropagation: false,
      ),
    );

    aws.ec2.Route(
      'spoke2-default-route',
      args: aws.ec2.RouteArgs(
        routeTableId: spoke2RouteTable.id,
        destinationCidrBlock: '0.0.0.0/0',
        transitGatewayId: transitGateway.id,
      ),
    );

    aws.ec2transitgateway.RouteTableAssociation(
      'spoke2-association',
      args: aws.ec2transitgateway.RouteTableAssociationArgs(
        transitGatewayAttachmentId: spoke2Attachment.id,
        transitGatewayRouteTableId: spokeTgwRouteTable.id,
      ),
    );

    aws.ec2transitgateway.RouteTablePropagation(
      'spoke2-propagation-to-inspection',
      args: aws.ec2transitgateway.RouteTablePropagationArgs(
        transitGatewayAttachmentId: spoke2Attachment.id,
        transitGatewayRouteTableId: inspectionTgwRouteTable.id,
      ),
    );

    aws.ec2transitgateway.Route(
      'spoke-tgw-default-route-to-inspection',
      args: aws.ec2transitgateway.RouteArgs(
        transitGatewayRouteTableId: spokeTgwRouteTable.id,
        destinationCidrBlock: '0.0.0.0/0',
        transitGatewayAttachmentId: inspectionAttachment.id,
      ),
    );

    aws.ec2transitgateway.Route(
      'inspection-tgw-route-to-spoke1',
      args: aws.ec2transitgateway.RouteArgs(
        transitGatewayRouteTableId: inspectionTgwRouteTable.id,
        destinationCidrBlock: '10.0.0.0/16',
        transitGatewayAttachmentId: spoke1Attachment.id,
      ),
    );

    aws.ec2transitgateway.Route(
      'inspection-tgw-route-to-spoke2',
      args: aws.ec2transitgateway.RouteArgs(
        transitGatewayRouteTableId: inspectionTgwRouteTable.id,
        destinationCidrBlock: '10.1.0.0/16',
        transitGatewayAttachmentId: spoke2Attachment.id,
      ),
    );

    aws.ec2.Route(
      'inspection-private-route-to-spoke1',
      args: aws.ec2.RouteArgs(
        routeTableId: inspectionPrivateRouteTable.id,
        destinationCidrBlock: '10.0.0.0/16',
        transitGatewayId: transitGateway.id,
      ),
    );

    aws.ec2.Route(
      'inspection-private-route-to-spoke2',
      args: aws.ec2.RouteArgs(
        routeTableId: inspectionPrivateRouteTable.id,
        destinationCidrBlock: '10.1.0.0/16',
        transitGatewayId: transitGateway.id,
      ),
    );

    natGatewayEip = inspectionEip.publicIp;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('natGatewayEip', natGatewayEip)];
  }
}
