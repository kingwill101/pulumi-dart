// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_accelerator_attributes.dart';
import 'custom_routing_accelerator_ip_set.dart';

/// Input properties used for looking up and filtering CustomRoutingAccelerator resources.
class CustomRoutingAcceleratorState {
  /// The Amazon Resource Name (ARN) of the custom accelerator.
  final pulumi.Input<String>? arn;
  /// The attributes of the accelerator. Fields documented below.
  final pulumi.Input<CustomRoutingAcceleratorAttributes>? attributes;
  /// The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  final pulumi.Input<String>? dnsName;
  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enabled;
  /// -  The Global Accelerator Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the Global Accelerator. This attribute
  /// is simply an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  final pulumi.Input<String>? hostedZoneId;
  /// The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  final pulumi.Input<String>? ipAddressType;
  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// IP address set associated with the accelerator.
  final pulumi.Input<List<CustomRoutingAcceleratorIpSet>>? ipSets;
  /// The name of a custom routing accelerator.
  final pulumi.Input<String>? name;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CustomRoutingAcceleratorState].
  /// [arn] The Amazon Resource Name (ARN) of the custom accelerator.
  /// [attributes] The attributes of the accelerator. Fields documented below.
  /// [dnsName] The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  /// [enabled] Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  /// [hostedZoneId] -  The Global Accelerator Route 53 zone ID that can be used to
  /// [ipAddressType] The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  /// [ipAddresses] The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [ipSets] IP address set associated with the accelerator.
  /// [name] The name of a custom routing accelerator.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CustomRoutingAcceleratorState({
    this.arn,
    this.attributes,
    this.dnsName,
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
      'attributes': ?pulumi.Input.mapOptionalInputValue<CustomRoutingAcceleratorAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'dnsName': ?dnsName,
      'enabled': ?enabled,
      'hostedZoneId': ?hostedZoneId,
      'ipAddressType': ?ipAddressType,
      'ipAddresses': ?ipAddresses,
      'ipSets': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingAcceleratorIpSet>, List<Map<String, dynamic>>>(ipSets, (value) => pulumi.Input.encodeList<CustomRoutingAcceleratorIpSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CustomRoutingAcceleratorState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      attributes: map['attributes'] == null ? null : (CustomRoutingAcceleratorAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())).input(),
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId'] as String).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses'] as List).cast<String>()).input(),
      ipSets: map['ipSets'] == null ? null : (pulumi.Input.decodeList<CustomRoutingAcceleratorIpSet>(map['ipSets'], (value) => CustomRoutingAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

