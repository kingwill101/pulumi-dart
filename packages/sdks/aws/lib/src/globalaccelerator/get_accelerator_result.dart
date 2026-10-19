// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accelerator_attribute.dart';
import 'get_accelerator_ip_set.dart';

/// Result data returned by getAccelerator.
class GetAcceleratorResult {
  final String? arn;
  /// Attributes of the accelerator. See `attributes` below.
  final List<GetAcceleratorAttribute>? attributes;
  /// DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  final String? dnsName;
  /// DNS name that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses.
  final String? dualStackDnsName;
  /// Whether the accelerator is enabled.
  final bool? enabled;
  /// Global Accelerator Route 53 zone ID used to route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the accelerator.
  final String? hostedZoneId;
  final String? id;
  /// Value for the address type.
  final String? ipAddressType;
  /// IP address set associated with the accelerator. See `ipSets` below.
  final List<GetAcceleratorIpSet>? ipSets;
  final String? name;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAcceleratorResult].
  /// [arn] Optional.
  /// [attributes] Attributes of the accelerator. See `attributes` below.
  /// [dnsName] DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  /// [dualStackDnsName] DNS name that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses.
  /// [enabled] Whether the accelerator is enabled.
  /// [hostedZoneId] Global Accelerator Route 53 zone ID used to route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the accelerator.
  /// [id] Optional.
  /// [ipAddressType] Value for the address type.
  /// [ipSets] IP address set associated with the accelerator. See `ipSets` below.
  /// [name] Optional.
  /// [tags] Map of tags assigned to the resource.
  const GetAcceleratorResult({
    this.arn,
    this.attributes,
    this.dnsName,
    this.dualStackDnsName,
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
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAcceleratorAttribute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsName': ?dnsName,
      'dualStackDnsName': ?dualStackDnsName,
      'enabled': ?enabled,
      'hostedZoneId': ?hostedZoneId,
      'id': ?id,
      'ipAddressType': ?ipAddressType,
      'ipSets': ?(() { final guardedValue = ipSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAcceleratorIpSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory GetAcceleratorResult.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAcceleratorAttribute>(guardedValue, (value) => GetAcceleratorAttribute.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dualStackDnsName: (() { final guardedValue = map['dualStackDnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipSets: (() { final guardedValue = map['ipSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAcceleratorIpSet>(guardedValue, (value) => GetAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
