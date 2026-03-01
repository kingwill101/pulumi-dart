// ignore_for_file: unused_element, unnecessary_cast

import 'named_resources_int_slice_patch.dart';
import 'named_resources_string_slice_patch.dart';

/// NamedResourcesAttribute is a combination of an attribute name and its value.
class NamedResourcesAttributePatch {
  /// BoolValue is a true/false value.
  final bool? bool;
  /// IntValue is a 64-bit integer.
  final int? int;
  /// IntSliceValue is an array of 64-bit integers.
  final NamedResourcesIntSlicePatch? intSlice;
  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final String? name;
  /// QuantityValue is a quantity.
  final String? quantity;
  /// StringValue is a string.
  final String? string;
  /// StringSliceValue is an array of strings.
  final NamedResourcesStringSlicePatch? stringSlice;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0.
  final String? version;

  /// Creates a new [NamedResourcesAttributePatch].
  /// [bool] BoolValue is a true/false value.
  /// [int] IntValue is a 64-bit integer.
  /// [intSlice] IntSliceValue is an array of 64-bit integers.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  /// [quantity] QuantityValue is a quantity.
  /// [string] StringValue is a string.
  /// [stringSlice] StringSliceValue is an array of strings.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0.
  NamedResourcesAttributePatch({
    this.bool,
    this.int,
    this.intSlice,
    this.name,
    this.quantity,
    this.string,
    this.stringSlice,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool,
      'int': ?int,
      'intSlice': ?intSlice == null ? null : intSlice!.toMap(),
      'name': ?name,
      'quantity': ?quantity,
      'string': ?string,
      'stringSlice': ?stringSlice == null ? null : stringSlice!.toMap(),
      'version': ?version,
    };
  }

  factory NamedResourcesAttributePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesAttributePatch(
      bool: map['bool'] == null ? null : map['bool'] as bool,
      int: map['int'] == null ? null : map['int'] as int,
      intSlice: map['intSlice'] == null ? null : NamedResourcesIntSlicePatch.fromMap((map['intSlice'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as String,
      string: map['string'] == null ? null : map['string'] as String,
      stringSlice: map['stringSlice'] == null ? null : NamedResourcesStringSlicePatch.fromMap((map['stringSlice'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

