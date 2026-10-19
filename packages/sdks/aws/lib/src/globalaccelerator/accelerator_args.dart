// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_attributes.dart';

/// {@template pulumi_globalaccelerator_accelerator_accelerator_args_doc}
/// The set of arguments for Accelerator.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_accelerator_accelerator_args_doc}
class AcceleratorArgs {
  /// Configuration block with accelerator attributes. See `attributes` below.
  final pulumi.Input<AcceleratorAttributes?>? attributes;
  /// Whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  final pulumi.Input<bool?>? enabled;
  /// Value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  final pulumi.Input<String?>? ipAddressType;
  /// IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>?>? ipAddresses;
  /// Name of the accelerator.
  final pulumi.Input<String?>? name;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AcceleratorArgs].
  /// [attributes] Configuration block with accelerator attributes. See `attributes` below.
  /// [enabled] Whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  /// [ipAddressType] Value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  /// [ipAddresses] IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [name] Name of the accelerator.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AcceleratorArgs({
    this.attributes,
    this.enabled,
    this.ipAddressType,
    this.ipAddresses,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<AcceleratorAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'enabled': ?enabled,
      'ipAddressType': ?ipAddressType,
      'ipAddresses': ?ipAddresses,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return AcceleratorArgs(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AcceleratorAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
