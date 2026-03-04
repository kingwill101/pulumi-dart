// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final pulumi.Input<String> value;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
