// ignore_for_file: unused_element, unnecessary_cast

class DbSystemPropertiesDataCollectionOptions {
  /// Indicates whether to enable data collection for diagnostics.
  final bool? isDiagnosticsEventsEnabled;

  /// Indicates whether to enable incident logs and trace collection.
  final bool? isIncidentLogsEnabled;

  /// Creates a new [DbSystemPropertiesDataCollectionOptions].
  /// [isDiagnosticsEventsEnabled] Indicates whether to enable data collection for diagnostics.
  /// [isIncidentLogsEnabled] Indicates whether to enable incident logs and trace collection.
  DbSystemPropertiesDataCollectionOptions({
    this.isDiagnosticsEventsEnabled,
    this.isIncidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isDiagnosticsEventsEnabledValue = isDiagnosticsEventsEnabled;
    if (isDiagnosticsEventsEnabledValue != null) {
      map['isDiagnosticsEventsEnabled'] = isDiagnosticsEventsEnabledValue;
    }
    final isIncidentLogsEnabledValue = isIncidentLogsEnabled;
    if (isIncidentLogsEnabledValue != null) {
      map['isIncidentLogsEnabled'] = isIncidentLogsEnabledValue;
    }
    return map;
  }

  factory DbSystemPropertiesDataCollectionOptions.fromMap(
      Map<String, dynamic> map) {
    return DbSystemPropertiesDataCollectionOptions(
      isDiagnosticsEventsEnabled: map['isDiagnosticsEventsEnabled'] == null
          ? null
          : map['isDiagnosticsEventsEnabled'] as bool,
      isIncidentLogsEnabled: map['isIncidentLogsEnabled'] == null
          ? null
          : map['isIncidentLogsEnabled'] as bool,
    );
  }
}
