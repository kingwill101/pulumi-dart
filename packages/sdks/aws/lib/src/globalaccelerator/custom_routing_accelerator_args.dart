// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_accelerator_attributes.dart';

/// {@template pulumi_globalaccelerator_custom_routing_accelerator_custom_routing_accelerator_args_doc}
/// The set of arguments for CustomRoutingAccelerator.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_custom_routing_accelerator_custom_routing_accelerator_args_doc}
class CustomRoutingAcceleratorArgs {
  /// The attributes of the accelerator. Fields documented below.
  final pulumi.Input<CustomRoutingAcceleratorAttributes>? attributes;
  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enabled;
  /// The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  final pulumi.Input<String>? ipAddressType;
  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The name of a custom routing accelerator.
  final pulumi.Input<String>? name;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomRoutingAcceleratorArgs].
  /// [attributes] The attributes of the accelerator. Fields documented below.
  /// [enabled] Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  /// [ipAddressType] The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  /// [ipAddresses] The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [name] The name of a custom routing accelerator.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CustomRoutingAcceleratorArgs({
    pulumi.Output<CustomRoutingAcceleratorAttributes>? attributes,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<List<String>>? ipAddresses,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      attributes = pulumi.Input.asOptionalInput<CustomRoutingAcceleratorAttributes>(attributes),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<CustomRoutingAcceleratorAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'enabled': ?enabled,
      'ipAddressType': ?ipAddressType,
      'ipAddresses': ?ipAddresses,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory CustomRoutingAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorArgs(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<CustomRoutingAcceleratorAttributes>(CustomRoutingAcceleratorAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipAddresses'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

