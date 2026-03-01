// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingLocationPreference {
  /// A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  final String followGaeApplication;

  /// The preferred Compute Engine zone for the secondary/failover
  final String secondaryZone;

  /// The preferred compute engine zone.
  final String zone;

  /// Creates a new [GetDatabaseInstanceSettingLocationPreference].
  /// [followGaeApplication] A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover
  /// [zone] The preferred compute engine zone.
  GetDatabaseInstanceSettingLocationPreference({
    required this.followGaeApplication,
    required this.secondaryZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followGaeApplication': followGaeApplication,
      'secondaryZone': secondaryZone,
      'zone': zone,
    };
  }

  factory GetDatabaseInstanceSettingLocationPreference.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingLocationPreference(
      followGaeApplication: map['followGaeApplication'] as String,
      secondaryZone: map['secondaryZone'] as String,
      zone: map['zone'] as String,
    );
  }
}
