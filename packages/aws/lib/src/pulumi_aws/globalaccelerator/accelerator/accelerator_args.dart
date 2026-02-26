// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../accelerator_attributes/accelerator_attributes.dart';

/// The set of arguments for Accelerator.
class AcceleratorArgs {
  /// The attributes of the accelerator. Fields documented below.
  final Input<AcceleratorAttributes>? attributes;

  /// Indicates whether the accelerator is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Valid values: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enabled;

  /// The value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  final Input<String>? ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final Input<List<String>>? ipAddresses;

  /// The name of the accelerator.
  final Input<String>? name;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['attributes'] = Input.mapOptionalInputValue<AcceleratorAttributes,
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
      attributes:
          Input.asOptionalInput<AcceleratorAttributes>(map['attributes']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      ipAddresses: Input.asOptionalInput<List<String>>(map['ipAddresses']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
