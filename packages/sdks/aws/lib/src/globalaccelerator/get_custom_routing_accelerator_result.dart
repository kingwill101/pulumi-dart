// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_accelerator_attribute.dart';
import 'get_custom_routing_accelerator_ip_set.dart';

/// Result data returned by getCustomRoutingAccelerator.
class GetCustomRoutingAcceleratorResult {
  final String? arn;
  final List<GetCustomRoutingAcceleratorAttribute>? attributes;
  final String? dnsName;
  final bool? enabled;
  final String? hostedZoneId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddressType;
  final List<GetCustomRoutingAcceleratorIpSet>? ipSets;
  final String? name;
  final Map<String, String>? tags;

  /// Creates a new [GetCustomRoutingAcceleratorResult].
  /// [arn] Optional.
  /// [attributes] Optional.
  /// [dnsName] Optional.
  /// [enabled] Optional.
  /// [hostedZoneId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressType] Optional.
  /// [ipSets] Optional.
  /// [name] Optional.
  /// [tags] Optional.
  const GetCustomRoutingAcceleratorResult({
    this.arn,
    this.attributes,
    this.dnsName,
    this.enabled,
    this.hostedZoneId,
    this.id,
    this.ipAddressType,
    this.ipSets,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomRoutingAcceleratorAttribute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsName': ?dnsName,
      'enabled': ?enabled,
      'hostedZoneId': ?hostedZoneId,
      'id': ?id,
      'ipAddressType': ?ipAddressType,
      'ipSets': ?(() { final guardedValue = ipSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomRoutingAcceleratorIpSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory GetCustomRoutingAcceleratorResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomRoutingAcceleratorAttribute>(guardedValue, (value) => GetCustomRoutingAcceleratorAttribute.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipSets: (() { final guardedValue = map['ipSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomRoutingAcceleratorIpSet>(guardedValue, (value) => GetCustomRoutingAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
