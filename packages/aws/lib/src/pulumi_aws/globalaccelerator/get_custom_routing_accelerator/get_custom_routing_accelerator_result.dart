// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_custom_routing_accelerator_attribute/get_custom_routing_accelerator_attribute.dart';
import '../get_custom_routing_accelerator_ip_set/get_custom_routing_accelerator_ip_set.dart';

/// Result data returned by getCustomRoutingAccelerator.
class GetCustomRoutingAcceleratorResult {
  final String arn;
  final List<GetCustomRoutingAcceleratorAttribute> attributes;
  final String dnsName;
  final bool enabled;
  final String hostedZoneId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddressType;
  final List<GetCustomRoutingAcceleratorIpSet> ipSets;
  final String name;
  final Map<String, String> tags;

  GetCustomRoutingAcceleratorResult({
    required this.arn,
    required this.attributes,
    required this.dnsName,
    required this.enabled,
    required this.hostedZoneId,
    required this.id,
    required this.ipAddressType,
    required this.ipSets,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['attributes'] = Input.encodeList<GetCustomRoutingAcceleratorAttribute,
        Map<String, dynamic>>(attributes, (value) => value.toMap());
    map['dnsName'] = dnsName;
    map['enabled'] = enabled;
    map['hostedZoneId'] = hostedZoneId;
    map['id'] = id;
    map['ipAddressType'] = ipAddressType;
    map['ipSets'] = Input.encodeList<GetCustomRoutingAcceleratorIpSet,
        Map<String, dynamic>>(ipSets, (value) => value.toMap());
    map['name'] = name;
    map['tags'] = tags;
    return map;
  }

  factory GetCustomRoutingAcceleratorResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorResult(
      arn: map['arn'] as String,
      attributes: Input.decodeList<GetCustomRoutingAcceleratorAttribute>(
          map['attributes'],
          (value) => GetCustomRoutingAcceleratorAttribute.fromMap(
              (value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] as String,
      enabled: map['enabled'] as bool,
      hostedZoneId: map['hostedZoneId'] as String,
      id: map['id'] as String,
      ipAddressType: map['ipAddressType'] as String,
      ipSets: Input.decodeList<GetCustomRoutingAcceleratorIpSet>(
          map['ipSets'],
          (value) => GetCustomRoutingAcceleratorIpSet.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
