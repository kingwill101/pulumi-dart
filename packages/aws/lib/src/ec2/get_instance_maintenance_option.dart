// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMaintenanceOption {
  /// Automatic recovery behavior of the instance.
  final String autoRecovery;

  /// Creates a new [GetInstanceMaintenanceOption].
  /// [autoRecovery] Automatic recovery behavior of the instance.
  GetInstanceMaintenanceOption({required this.autoRecovery});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'autoRecovery': autoRecovery};
  }

  factory GetInstanceMaintenanceOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenanceOption(
      autoRecovery: map['autoRecovery'] as String,
    );
  }
}
