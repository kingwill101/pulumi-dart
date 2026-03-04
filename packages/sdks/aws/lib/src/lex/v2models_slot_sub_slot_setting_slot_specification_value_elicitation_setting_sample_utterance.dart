// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance {
  /// The sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  final pulumi.Input<String> utterance;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance].
  /// [utterance] The sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance({
    required this.utterance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'utterance': utterance};
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance(
      utterance: pulumi.Input.fromValue(map['utterance'] as String),
    );
  }
}
