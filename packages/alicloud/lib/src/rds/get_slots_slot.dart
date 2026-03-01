// ignore_for_file: unused_element, unnecessary_cast


class GetSlotsSlot {
  /// The name of the database where Replication Slot is located.
  final String database;
  /// The plugin used by Replication Slot.
  final String plugin;
  /// The Replication Slot name.
  final String slotName;
  /// The Replication Slot status.
  final String slotStatus;
  /// The Replication Slot type.
  final String slotType;
  /// Is the Replication Slot temporary.
  final String temporary;
  /// The amount of logs accumulated by Replication Slot.
  final String walDelay;

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
      database: map['database'] as String,
      plugin: map['plugin'] as String,
      slotName: map['slotName'] as String,
      slotStatus: map['slotStatus'] as String,
      slotType: map['slotType'] as String,
      temporary: map['temporary'] as String,
      walDelay: map['walDelay'] as String,
    );
  }
}

