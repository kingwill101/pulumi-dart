// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateApplicationsDimension {
  /// Quota dimension Key.
  final pulumi.Input<String>? key;
  /// Quota dimension Value.
  final pulumi.Input<String>? value;

  /// Creates a new [TemplateApplicationsDimension].
  /// [key] Quota dimension Key.
  /// [value] Quota dimension Value.
  TemplateApplicationsDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TemplateApplicationsDimension.fromMap(Map<String, dynamic> map) {
    return TemplateApplicationsDimension(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

