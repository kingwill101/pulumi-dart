// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution builder extension (SBE) partner properties object.
class SbePartnerProperties {
  /// SBE partner property name.
  final pulumi.Input<String>? name;
  /// SBE partner property value.
  final pulumi.Input<String>? value;

  /// Creates a new [SbePartnerProperties].
  /// [name] SBE partner property name.
  /// [value] SBE partner property value.
  SbePartnerProperties({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SbePartnerProperties.fromMap(Map<String, dynamic> map) {
    return SbePartnerProperties(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

