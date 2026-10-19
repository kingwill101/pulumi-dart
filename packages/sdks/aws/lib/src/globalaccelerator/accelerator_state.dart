// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_attributes.dart';
import 'accelerator_ip_set.dart';

/// Input properties used for looking up and filtering Accelerator resources.
class AcceleratorState {
  /// ARN of the accelerator.
  final pulumi.Input<String?>? arn;
  /// Configuration block with accelerator attributes. See `attributes` below.
  final pulumi.Input<AcceleratorAttributes?>? attributes;
  /// DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  final pulumi.Input<String?>? dnsName;
  /// DNS name that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses. For example, `a1234567890abcdef.dualstack.awsglobalaccelerator.com`.
  final pulumi.Input<String?>? dualStackDnsName;
  /// Whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  final pulumi.Input<bool?>? enabled;
  /// Global Accelerator Route 53 zone ID used to route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the accelerator. This is an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  final pulumi.Input<String?>? hostedZoneId;
  /// Value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  final pulumi.Input<String?>? ipAddressType;
  /// IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>?>? ipAddresses;
  /// IP address set associated with the accelerator. See `ipSets` below.
  final pulumi.Input<List<AcceleratorIpSet>?>? ipSets;
  /// Name of the accelerator.
  final pulumi.Input<String?>? name;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AcceleratorState].
  /// [arn] ARN of the accelerator.
  /// [attributes] Configuration block with accelerator attributes. See `attributes` below.
  /// [dnsName] DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  /// [dualStackDnsName] DNS name that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses. For example, `a1234567890abcdef.dualstack.awsglobalaccelerator.com`.
  /// [enabled] Whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  /// [hostedZoneId] Global Accelerator Route 53 zone ID used to route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the accelerator. This is an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  /// [ipAddressType] Value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  /// [ipAddresses] IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [ipSets] IP address set associated with the accelerator. See `ipSets` below.
  /// [name] Name of the accelerator.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AcceleratorState({
    this.arn,
    this.attributes,
    this.dnsName,
    this.dualStackDnsName,
    this.enabled,
    this.hostedZoneId,
    this.ipAddressType,
    this.ipAddresses,
    this.ipSets,
    this.name,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributes': ?pulumi.Input.mapOptionalInputValue<AcceleratorAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'dnsName': ?dnsName,
      'dualStackDnsName': ?dualStackDnsName,
      'enabled': ?enabled,
      'hostedZoneId': ?hostedZoneId,
      'ipAddressType': ?ipAddressType,
      'ipAddresses': ?ipAddresses,
      'ipSets': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorIpSet>, List<Map<String, dynamic>>>(ipSets, (value) => pulumi.Input.encodeList<AcceleratorIpSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AcceleratorState.fromMap(Map<String, dynamic> map) {
    return AcceleratorState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AcceleratorAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dualStackDnsName: (() { final guardedValue = map['dualStackDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipSets: (() { final guardedValue = map['ipSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorIpSet>(guardedValue, (value) => AcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
