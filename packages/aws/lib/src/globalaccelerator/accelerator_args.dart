// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_attributes.dart';

/// {@template pulumi_globalaccelerator_accelerator_accelerator_args_doc}
/// The set of arguments for Accelerator.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_accelerator_accelerator_args_doc}
class AcceleratorArgs {
  /// The attributes of the accelerator. Fields documented below.
  final pulumi.Input<AcceleratorAttributes>? attributes;

  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enabled;

  /// The value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  final pulumi.Input<String>? ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>>? ipAddresses;

  /// The name of the accelerator.
  final pulumi.Input<String>? name;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AcceleratorArgs].
  /// [attributes] The attributes of the accelerator. Fields documented below.
  /// [enabled] Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  /// [ipAddressType] The value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  /// [ipAddresses] The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [name] The name of the accelerator.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AcceleratorArgs({
    AcceleratorAttributes? attributes,
    bool? enabled,
    String? ipAddressType,
    List<String>? ipAddresses,
    String? name,
    Map<String, String>? tags,
  }) : attributes = pulumi.Input.asOptionalInput<AcceleratorAttributes>(
         attributes,
       ),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
       ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
       name = pulumi.Input.asOptionalInput<String>(name),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            AcceleratorAttributes,
            Map<String, dynamic>
          >(attributes, (value) => value.toMap()),
      'enabled': ?enabled,
      'ipAddressType': ?ipAddressType,
      'ipAddresses': ?ipAddresses,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return AcceleratorArgs(
      attributes: map['attributes'] == null
          ? null
          : AcceleratorAttributes.fromMap(
              (map['attributes'] as Map).cast<String, dynamic>(),
            ),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      ipAddressType: map['ipAddressType'] == null
          ? null
          : map['ipAddressType'] as String,
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
