// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSlotsSlot {
  /// The name of the database where Replication Slot is located.
  final pulumi.Input<String> database;
  /// The plugin used by Replication Slot.
  final pulumi.Input<String> plugin;
  /// The Replication Slot name.
  final pulumi.Input<String> slotName;
  /// The Replication Slot status.
  final pulumi.Input<String> slotStatus;
  /// The Replication Slot type.
  final pulumi.Input<String> slotType;
  /// Is the Replication Slot temporary.
  final pulumi.Input<String> temporary;
  /// The amount of logs accumulated by Replication Slot.
  final pulumi.Input<String> walDelay;

  /// Creates a new [GetSlotsSlot].
  /// [database] The name of the database where Replication Slot is located.
  /// [plugin] The plugin used by Replication Slot.
  /// [slotName] The Replication Slot name.
  /// [slotStatus] The Replication Slot status.
  /// [slotType] The Replication Slot type.
  /// [temporary] Is the Replication Slot temporary.
  /// [walDelay] The amount of logs accumulated by Replication Slot.
  GetSlotsSlot({
    required this.database,
    required this.plugin,
    required this.slotName,
    required this.slotStatus,
    required this.slotType,
    required this.temporary,
    required this.walDelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'plugin': plugin,
      'slotName': slotName,
      'slotStatus': slotStatus,
      'slotType': slotType,
      'temporary': temporary,
      'walDelay': walDelay,
    };
  }

  factory GetSlotsSlot.fromMap(Map<String, dynamic> map) {
    return GetSlotsSlot(
      database: (map['database'] as String).input(),
      plugin: (map['plugin'] as String).input(),
      slotName: (map['slotName'] as String).input(),
      slotStatus: (map['slotStatus'] as String).input(),
      slotType: (map['slotType'] as String).input(),
      temporary: (map['temporary'] as String).input(),
      walDelay: (map['walDelay'] as String).input(),
    );
  }
}

