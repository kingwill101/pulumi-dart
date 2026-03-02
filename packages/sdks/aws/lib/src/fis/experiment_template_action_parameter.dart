// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateActionParameter {
  /// Parameter name.
  final pulumi.Input<String> key;
  /// Parameter value.
  ///
  /// For a list of parameters supported by each action, see [AWS FIS actions reference](https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html).
  final pulumi.Input<String> value;

  /// Creates a new [ExperimentTemplateActionParameter].
  /// [key] Parameter name.
  /// [value] Parameter value.
  ExperimentTemplateActionParameter({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ExperimentTemplateActionParameter.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateActionParameter(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

