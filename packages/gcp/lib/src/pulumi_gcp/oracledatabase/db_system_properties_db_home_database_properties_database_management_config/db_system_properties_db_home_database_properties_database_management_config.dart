// ignore_for_file: unused_element, unnecessary_cast

class DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig {
  /// (Output)
  /// The status of the Database Management service.
  /// Possible values:
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// DISABLED
  /// UPDATING
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  /// FAILED_UPDATING
  final String? managementState;

  /// (Output)
  /// The Database Management type.
  /// Possible values:
  /// BASIC
  /// ADVANCED
  final String? managementType;

  DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig({
    this.managementState,
    this.managementType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managementStateValue = managementState;
    if (managementStateValue != null) {
      map['managementState'] = managementStateValue;
    }
    final managementTypeValue = managementType;
    if (managementTypeValue != null) {
      map['managementType'] = managementTypeValue;
    }
    return map;
  }

  factory DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig.fromMap(
      Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig(
      managementState: map['managementState'] == null
          ? null
          : map['managementState'] as String,
      managementType: map['managementType'] == null
          ? null
          : map['managementType'] as String,
    );
  }
}
