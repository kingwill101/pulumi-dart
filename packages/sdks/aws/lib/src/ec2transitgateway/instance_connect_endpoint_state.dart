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
    this.arn,
    this.availabilityZone,
    this.dnsName,
    this.fipsDnsName,
    this.ipAddressType,
    this.networkInterfaceIds,
    this.ownerId,
    this.preserveClientIp,
    this.region,
    this.securityGroupIds,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcId,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      dnsName: map['dnsName'] == null ? null : ((map['dnsName'] as String).input()).input(),
      fipsDnsName: map['fipsDnsName'] == null ? null : ((map['fipsDnsName'] as String).input()).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : (((map['networkInterfaceIds'] as List).cast<String>()).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      preserveClientIp: map['preserveClientIp'] == null ? null : ((map['preserveClientIp'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((InstanceConnectEndpointTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

