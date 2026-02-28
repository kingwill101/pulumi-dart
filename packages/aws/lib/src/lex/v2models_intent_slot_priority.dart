// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentSlotPriority {
  /// Priority that Amazon Lex should apply to the slot.
  final int priority;

  /// Unique identifier of the slot.
  final String slotId;

  /// Creates a new [V2modelsIntentSlotPriority].
  /// [priority] Priority that Amazon Lex should apply to the slot.
  /// [slotId] Unique identifier of the slot.
  V2modelsIntentSlotPriority({
    required this.priority,
    required this.slotId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['slotId'] = slotId;
    return map;
  }

  factory V2modelsIntentSlotPriority.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentSlotPriority(
      priority: map['priority'] as int,
      slotId: map['slotId'] as String,
    );
  }
}
