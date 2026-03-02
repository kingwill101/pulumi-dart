// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_gateway_timeouts.dart';

/// Input properties used for looking up and filtering ResourceGateway resources.
class ResourceGatewayState {
  /// ARN of the resource gateway.
  final pulumi.Input<String>? arn;
  /// IP address type used by the resource gateway. Valid values are `IPV4`, `IPV6`, and `DUALSTACK`. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource.
  final pulumi.Input<String>? ipAddressType;
  /// The number of IPv4 addresses per ENI for your resource. This argument is only applicable to `IPV4` and `DUALSTACK` IP address types. Defaults to `16`.
  final pulumi.Input<int>? ipv4AddressesPerEni;
  /// Name of the resource gateway.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Security group IDs associated with the resource gateway. The security groups must be in the same VPC.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Status of the resource gateway.
  final pulumi.Input<String>? status;
  /// IDs of the VPC subnets in which to create the resource gateway.
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ResourceGatewayTimeouts>? timeouts;
  /// ID of the VPC for the resource gateway.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ResourceGatewayState].
  /// [arn] ARN of the resource gateway.
  /// [ipAddressType] IP address type used by the resource gateway. Valid values are `IPV4`, `IPV6`, and `DUALSTACK`. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource.
  /// [ipv4AddressesPerEni] The number of IPv4 addresses per ENI for your resource. This argument is only applicable to `IPV4` and `DUALSTACK` IP address types. Defaults to `16`.
  /// [name] Name of the resource gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] Security group IDs associated with the resource gateway. The security groups must be in the same VPC.
  /// [status] Status of the resource gateway.
  /// [subnetIds] IDs of the VPC subnets in which to create the resource gateway.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] ID of the VPC for the resource gateway.
  ResourceGatewayState({
    this.arn,
    this.ipAddressType,
    this.ipv4AddressesPerEni,
    this.name,
    this.region,
    this.securityGroupIds,
    this.status,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ipAddressType': ?ipAddressType,
      'ipv4AddressesPerEni': ?ipv4AddressesPerEni,
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'status': ?status,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceGatewayTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory ResourceGatewayState.fromMap(Map<String, dynamic> map) {
    return ResourceGatewayState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      ipv4AddressesPerEni: map['ipv4AddressesPerEni'] == null ? null : (map['ipv4AddressesPerEni'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ResourceGatewayTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

