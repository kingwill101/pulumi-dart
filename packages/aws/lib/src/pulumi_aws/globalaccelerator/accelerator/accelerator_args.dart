// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../accelerator_attributes/accelerator_attributes.dart';

/// The set of arguments for Accelerator.
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

  AcceleratorArgs({
    this.attributes,
    this.enabled,
    this.ipAddressType,
    this.ipAddresses,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
          AcceleratorAttributes,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final ipAddressesValue = ipAddresses;
    if (ipAddressesValue != null) {
      map['ipAddresses'] = ipAddressesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return AcceleratorArgs(
      attributes: pulumi.Input.asOptionalInput<AcceleratorAttributes>(
          map['attributes']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      ipAddressType: pulumi.Input.asOptionalInput<String>(map['ipAddressType']),
      ipAddresses:
          pulumi.Input.asOptionalInput<List<String>>(map['ipAddresses']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
