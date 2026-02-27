// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationEngineVersion {
  /// The engine version on which the query runs. If `selected_engine_version` is set to `AUTO`, the effective engine version is chosen by Athena.
  final String? effectiveEngineVersion;

  /// Requested engine version. Defaults to `AUTO`.
  final String? selectedEngineVersion;

  WorkgroupConfigurationEngineVersion({
    this.effectiveEngineVersion,
    this.selectedEngineVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectiveEngineVersionValue = effectiveEngineVersion;
    if (effectiveEngineVersionValue != null) {
      map['effectiveEngineVersion'] = effectiveEngineVersionValue;
    }
    final selectedEngineVersionValue = selectedEngineVersion;
    if (selectedEngineVersionValue != null) {
      map['selectedEngineVersion'] = selectedEngineVersionValue;
    }
    return map;
  }

  factory WorkgroupConfigurationEngineVersion.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationEngineVersion(
      effectiveEngineVersion: map['effectiveEngineVersion'] == null
          ? null
          : map['effectiveEngineVersion'] as String,
      selectedEngineVersion: map['selectedEngineVersion'] == null
          ? null
          : map['selectedEngineVersion'] as String,
    );
  }
}
