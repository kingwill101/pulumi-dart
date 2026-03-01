// ignore_for_file: unused_element, unnecessary_cast


class InventorySchedule {
  /// Specifies how frequently inventory results are produced. Valid values: `Daily`, `Weekly`.
  final String frequency;

  /// Creates a new [InventorySchedule].
  /// [frequency] Specifies how frequently inventory results are produced. Valid values: `Daily`, `Weekly`.
  InventorySchedule({
    required this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
    };
  }

  factory InventorySchedule.fromMap(Map<String, dynamic> map) {
    return InventorySchedule(
      frequency: map['frequency'] as String,
    );
  }
}

