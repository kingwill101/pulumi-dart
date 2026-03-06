// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InventorySchedule {
  /// Specifies how frequently inventory results are produced. Valid values: `Daily`, `Weekly`.
  final pulumi.Input<String> frequency;

  /// Creates a new [InventorySchedule].
  /// [frequency] Specifies how frequently inventory results are produced. Valid values: `Daily`, `Weekly`.
  const InventorySchedule({
    required this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
    };
  }

  factory InventorySchedule.fromMap(Map<String, dynamic> map) {
    return InventorySchedule(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
    );
  }
}

