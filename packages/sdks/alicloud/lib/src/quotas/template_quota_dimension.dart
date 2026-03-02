// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateQuotaDimension {
  /// The Key of quota_dimensions.
  final pulumi.Input<String>? key;
  /// The Value of quota_dimensions.
  final pulumi.Input<String>? value;

  /// Creates a new [TemplateQuotaDimension].
  /// [key] The Key of quota_dimensions.
  /// [value] The Value of quota_dimensions.
  TemplateQuotaDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TemplateQuotaDimension.fromMap(Map<String, dynamic> map) {
    return TemplateQuotaDimension(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

