// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplateScratchesScratchPreferenceParameter {
  /// Priority parameter key.
  final pulumi.Input<String> parameterKey;

  /// Priority parameter value.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [GetTemplateScratchesScratchPreferenceParameter].
  /// [parameterKey] Priority parameter key.
  /// [parameterValue] Priority parameter value.
  GetTemplateScratchesScratchPreferenceParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetTemplateScratchesScratchPreferenceParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTemplateScratchesScratchPreferenceParameter(
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}
