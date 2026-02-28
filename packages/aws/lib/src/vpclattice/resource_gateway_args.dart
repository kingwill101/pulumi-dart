// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_gateway_timeouts.dart';

/// {@template pulumi_vpclattice_resource_gateway_resource_gateway_args_doc}
/// The set of arguments for ResourceGateway.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_resource_gateway_resource_gateway_args_doc}
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

  /// Creates a new [ResourceGatewayArgs].
  /// [ipAddressType] IP address type used by the resource gateway. Valid values are `IPV4`, `IPV6`, and `DUALSTACK`. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource.
  /// [ipv4AddressesPerEni] The number of IPv4 addresses per ENI for your resource. This argument is only applicable to `IPV4` and `DUALSTACK` IP address types. Defaults to `16`.
  /// [name] Name of the resource gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] Security group IDs associated with the resource gateway. The security groups must be in the same VPC.
  /// [subnetIds] IDs of the VPC subnets in which to create the resource gateway.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcId] ID of the VPC for the resource gateway.
  ResourceGatewayArgs({
    String? ipAddressType,
    int? ipv4AddressesPerEni,
    String? name,
    String? region,
    List<String>? securityGroupIds,
    required List<String> subnetIds,
    Map<String, String>? tags,
    ResourceGatewayTimeouts? timeouts,
    required String vpcId,
  })  : ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
        ipv4AddressesPerEni =
            pulumi.Input.asOptionalInput<int>(ipv4AddressesPerEni),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<ResourceGatewayTimeouts>(timeouts),
        vpcId = pulumi.Input.asInput<String>(vpcId);

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
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      ipv4AddressesPerEni: map['ipv4AddressesPerEni'] == null
          ? null
          : map['ipv4AddressesPerEni'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ResourceGatewayTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      vpcId: map['vpcId'] as String,
    );
  }
}
