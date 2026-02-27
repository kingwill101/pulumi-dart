// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_routing_accelerator_attributes/custom_routing_accelerator_attributes.dart';

/// The set of arguments for CustomRoutingAccelerator.
class CustomRoutingAcceleratorArgs {
  /// The attributes of the accelerator. Fields documented below.
  final Input<CustomRoutingAcceleratorAttributes>? attributes;

  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  final Input<bool>? enabled;

  /// The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  final Input<String>? ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final Input<List<String>>? ipAddresses;

  /// The name of a custom routing accelerator.
  final Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CustomRoutingAcceleratorArgs({
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
      map['attributes'] = Input.mapOptionalInputValue<
          CustomRoutingAcceleratorAttributes,
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

  factory CustomRoutingAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorArgs(
      attributes: Input.asOptionalInput<CustomRoutingAcceleratorAttributes>(
          map['attributes']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      ipAddresses: Input.asOptionalInput<List<String>>(map['ipAddresses']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
