// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateTargetResourceTag {
  /// Tag key.
  final pulumi.Input<String> key;

  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [ExperimentTemplateTargetResourceTag].
  /// [key] Tag key.
  /// [value] Tag value.
  ExperimentTemplateTargetResourceTag({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory ExperimentTemplateTargetResourceTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperimentTemplateTargetResourceTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
