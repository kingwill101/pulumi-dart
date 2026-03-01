// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_accelerator_attribute.dart';
import 'get_custom_routing_accelerator_ip_set.dart';

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

  /// Creates a new [GetCustomRoutingAcceleratorResult].
  /// [arn] Required.
  /// [attributes] Required.
  /// [dnsName] Required.
  /// [enabled] Required.
  /// [hostedZoneId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressType] Required.
  /// [ipSets] Required.
  /// [name] Required.
  /// [tags] Required.
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
    return <String, dynamic>{
      'arn': arn,
      'attributes':
          pulumi.Input.encodeList<
            GetCustomRoutingAcceleratorAttribute,
            Map<String, dynamic>
          >(attributes, (value) => value.toMap()),
      'dnsName': dnsName,
      'enabled': enabled,
      'hostedZoneId': hostedZoneId,
      'id': id,
      'ipAddressType': ipAddressType,
      'ipSets':
          pulumi.Input.encodeList<
            GetCustomRoutingAcceleratorIpSet,
            Map<String, dynamic>
          >(ipSets, (value) => value.toMap()),
      'name': name,
      'tags': tags,
    };
  }

  factory GetCustomRoutingAcceleratorResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorResult(
      arn: map['arn'] as String,
      attributes: pulumi.Input.decodeList<GetCustomRoutingAcceleratorAttribute>(
        map['attributes'],
        (value) => GetCustomRoutingAcceleratorAttribute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dnsName: map['dnsName'] as String,
      enabled: map['enabled'] as bool,
      hostedZoneId: map['hostedZoneId'] as String,
      id: map['id'] as String,
      ipAddressType: map['ipAddressType'] as String,
      ipSets: pulumi.Input.decodeList<GetCustomRoutingAcceleratorIpSet>(
        map['ipSets'],
        (value) => GetCustomRoutingAcceleratorIpSet.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
