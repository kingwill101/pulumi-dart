// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final pulumi.Input<String> expressionString;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  const V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionString': expressionString,
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition(
      expressionString: pulumi.Input.fromValue(map['expressionString'] as String),
    );
  }
}
