// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentRecurringScheduleTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final String id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  final String? version;

  PatchDeploymentRecurringScheduleTimeZone({
    required this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory PatchDeploymentRecurringScheduleTimeZone.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleTimeZone(
      id: map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
