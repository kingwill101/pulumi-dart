// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_gateway_timeouts/resource_gateway_timeouts.dart';

/// The set of arguments for ResourceGateway.
class ResourceGatewayArgs {
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

  /// IDs of the VPC subnets in which to create the resource gateway.
  final pulumi.Input<List<String>> subnetIds;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ResourceGatewayTimeouts>? timeouts;

  /// ID of the VPC for the resource gateway.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  ResourceGatewayArgs({
    this.ipAddressType,
    this.ipv4AddressesPerEni,
    this.name,
    this.region,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final ipv4AddressesPerEniValue = ipv4AddressesPerEni;
    if (ipv4AddressesPerEniValue != null) {
      map['ipv4AddressesPerEni'] = ipv4AddressesPerEniValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ResourceGatewayTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory ResourceGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGatewayArgs(
      ipAddressType: pulumi.Input.asOptionalInput<String>(map['ipAddressType']),
      ipv4AddressesPerEni:
          pulumi.Input.asOptionalInput<int>(map['ipv4AddressesPerEni']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ResourceGatewayTimeouts>(
          map['timeouts']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
