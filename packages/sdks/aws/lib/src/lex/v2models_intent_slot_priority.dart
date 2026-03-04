// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentSlotPriority {
  /// Priority that Amazon Lex should apply to the slot.
  final pulumi.Input<int> priority;

  /// Unique identifier of the slot.
  final pulumi.Input<String> slotId;

  /// Creates a new [V2modelsIntentSlotPriority].
  /// [priority] Priority that Amazon Lex should apply to the slot.
  /// [slotId] Unique identifier of the slot.
  V2modelsIntentSlotPriority({required this.priority, required this.slotId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'priority': priority, 'slotId': slotId};
  }

  factory V2modelsIntentSlotPriority.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentSlotPriority(
      priority: pulumi.Input.fromValue(map['priority'] as int),
      slotId: pulumi.Input.fromValue(map['slotId'] as String),
    );
  }
}
