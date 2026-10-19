// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_accelerator_attribute.dart';
import 'get_custom_routing_accelerator_ip_set.dart';

/// Result data returned by getCustomRoutingAccelerator.
class GetCustomRoutingAcceleratorResult {
  final String? arn;
  /// Attributes of the accelerator. See `attributes` below.
  final List<GetCustomRoutingAcceleratorAttribute>? attributes;
  /// DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  final String? dnsName;
  /// Whether the accelerator is enabled.
  final bool? enabled;
  /// Global Accelerator Route 53 zone ID used to route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the accelerator.
  final String? hostedZoneId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Value for the address type.
  final String? ipAddressType;
  /// IP address set associated with the accelerator. See `ipSets` below.
  final List<GetCustomRoutingAcceleratorIpSet>? ipSets;
  final String? name;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetCustomRoutingAcceleratorResult].
  /// [arn] Optional.
  /// [attributes] Attributes of the accelerator. See `attributes` below.
  /// [dnsName] DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  /// [enabled] Whether the accelerator is enabled.
  /// [hostedZoneId] Global Accelerator Route 53 zone ID used to route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the accelerator.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressType] Value for the address type.
  /// [ipSets] IP address set associated with the accelerator. See `ipSets` below.
  /// [name] Optional.
  /// [tags] Map of tags assigned to the resource.
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
