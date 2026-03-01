// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_connect_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering InstanceConnectEndpoint resources.
class InstanceConnectEndpointState {
  /// The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.
  final pulumi.Input<String>? arn;
  /// The Availability Zone of the EC2 Instance Connect Endpoint.
  final pulumi.Input<String>? availabilityZone;
  /// The DNS name of the EC2 Instance Connect Endpoint.
  final pulumi.Input<String>? dnsName;
  /// The DNS name of the EC2 Instance Connect FIPS Endpoint.
  final pulumi.Input<String>? fipsDnsName;
  /// IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  final pulumi.Input<String>? ipAddressType;
  /// The IDs of the ENIs that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// The ID of the AWS account that created the EC2 Instance Connect Endpoint.
  final pulumi.Input<String>? ownerId;
  /// Indicates whether your client's IP address is preserved as the source. Default: `true`.
  final pulumi.Input<bool>? preserveClientIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  final pulumi.Input<String>? subnetId;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<InstanceConnectEndpointTimeouts>? timeouts;
  /// The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [InstanceConnectEndpointState].
  /// [arn] The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.
  /// [availabilityZone] The Availability Zone of the EC2 Instance Connect Endpoint.
  /// [dnsName] The DNS name of the EC2 Instance Connect Endpoint.
  /// [fipsDnsName] The DNS name of the EC2 Instance Connect FIPS Endpoint.
  /// [ipAddressType] IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  /// [networkInterfaceIds] The IDs of the ENIs that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint.
  /// [ownerId] The ID of the AWS account that created the EC2 Instance Connect Endpoint.
  /// [preserveClientIp] Indicates whether your client's IP address is preserved as the source. Default: `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  /// [subnetId] The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  InstanceConnectEndpointState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? fipsDnsName,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<String>? ownerId,
    pulumi.Output<bool>? preserveClientIp,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<InstanceConnectEndpointTimeouts>? timeouts,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      fipsDnsName = pulumi.Input.asOptionalInput<String>(fipsDnsName),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      preserveClientIp = pulumi.Input.asOptionalInput<bool>(preserveClientIp),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<InstanceConnectEndpointTimeouts>(timeouts),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'dnsName': ?dnsName,
      'fipsDnsName': ?fipsDnsName,
      'ipAddressType': ?ipAddressType,
      'networkInterfaceIds': ?networkInterfaceIds,
      'ownerId': ?ownerId,
      'preserveClientIp': ?preserveClientIp,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InstanceConnectEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory InstanceConnectEndpointState.fromMap(Map<String, dynamic> map) {
    return InstanceConnectEndpointState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      fipsDnsName: map['fipsDnsName'] == null ? null : pulumi.Output.create<String>(map['fipsDnsName'] as String),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      preserveClientIp: map['preserveClientIp'] == null ? null : pulumi.Output.create<bool>(map['preserveClientIp'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<InstanceConnectEndpointTimeouts>(InstanceConnectEndpointTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

