// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final pulumi.Input<String> value;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
