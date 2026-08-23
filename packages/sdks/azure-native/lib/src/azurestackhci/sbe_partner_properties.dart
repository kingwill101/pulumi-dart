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
  const SbePartnerProperties({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
