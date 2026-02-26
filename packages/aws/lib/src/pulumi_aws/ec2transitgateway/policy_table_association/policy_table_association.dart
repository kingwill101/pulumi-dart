import 'package:pulumi/pulumi.dart';
import 'policy_table_association_args.dart';

/// Manages an EC2 Transit Gateway Policy Table association.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PolicyTableAssociation("example", {
/// transitGatewayAttachmentId: exampleAwsNetworkmanagerTransitGatewayPeering.transitGatewayPeeringAttachmentId,
/// transitGatewayPolicyTableId: exampleAwsEc2TransitGatewayPolicyTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PolicyTableAssociation("example",
/// transit_gateway_attachment_id=example_aws_networkmanager_transit_gateway_peering["transitGatewayPeeringAttachmentId"],
/// transit_gateway_policy_table_id=example_aws_ec2_transit_gateway_policy_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.PolicyTableAssociation("example", new()
/// {
/// TransitGatewayAttachmentId = exampleAwsNetworkmanagerTransitGatewayPeering.TransitGatewayPeeringAttachmentId,
/// TransitGatewayPolicyTableId = exampleAwsEc2TransitGatewayPolicyTable.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewPolicyTableAssociation(ctx, "example", &ec2transitgateway.PolicyTableAssociationArgs{
/// TransitGatewayAttachmentId:  pulumi.Any(exampleAwsNetworkmanagerTransitGatewayPeering.TransitGatewayPeeringAttachmentId),
/// TransitGatewayPolicyTableId: pulumi.Any(exampleAwsEc2TransitGatewayPolicyTable.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableAssociation;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new PolicyTableAssociation("example", PolicyTableAssociationArgs.builder()
/// .transitGatewayAttachmentId(exampleAwsNetworkmanagerTransitGatewayPeering.transitGatewayPeeringAttachmentId())
/// .transitGatewayPolicyTableId(exampleAwsEc2TransitGatewayPolicyTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:PolicyTableAssociation
/// properties:
/// transitGatewayAttachmentId: ${exampleAwsNetworkmanagerTransitGatewayPeering.transitGatewayPeeringAttachmentId}
/// transitGatewayPolicyTableId: ${exampleAwsEc2TransitGatewayPolicyTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.PolicyTableAssociation`" pulumi-lang-dotnet="`aws.ec2transitgateway.PolicyTableAssociation`" pulumi-lang-go="`ec2transitgateway.PolicyTableAssociation`" pulumi-lang-python="`ec2transitgateway.PolicyTableAssociation`" pulumi-lang-yaml="`aws.ec2transitgateway.PolicyTableAssociation`" pulumi-lang-java="`aws.ec2transitgateway.PolicyTableAssociation`">`aws.ec2transitgateway.PolicyTableAssociation`</span> using the EC2 Transit Gateway Policy Table identifier, an underscore, and the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation example tgw-rtb-12345678_tgw-attach-87654321
/// ```
class PolicyTableAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the resource
  late final Output<String> resourceId;

  /// Type of the resource
  late final Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Policy Table.
  late final Output<String> transitGatewayPolicyTableId;

  PolicyTableAssociation(
    String name, {
    PolicyTableAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayPolicyTableId =
        registerOutput<String>('transitGatewayPolicyTableId');
  }
}
