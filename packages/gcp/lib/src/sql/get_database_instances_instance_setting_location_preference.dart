// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingLocationPreference {
  /// A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  final String followGaeApplication;

  /// The preferred Compute Engine zone for the secondary/failover
  final String secondaryZone;

  /// To filter out the Cloud SQL instances which are located in the specified zone. This zone refers to the Compute Engine zone that the instance is currently serving from.
  final String zone;

  /// Creates a new [GetDatabaseInstancesInstanceSettingLocationPreference].
  /// [followGaeApplication] A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover
  /// [zone] To filter out the Cloud SQL instances which are located in the specified zone. This zone refers to the Compute Engine zone that the instance is currently serving from.
  GetDatabaseInstancesInstanceSettingLocationPreference({
    required this.followGaeApplication,
    required this.secondaryZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['followGaeApplication'] = followGaeApplication;
    map['secondaryZone'] = secondaryZone;
    map['zone'] = zone;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingLocationPreference.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingLocationPreference(
      followGaeApplication: map['followGaeApplication'] as String,
      secondaryZone: map['secondaryZone'] as String,
      zone: map['zone'] as String,
    );
  }
}
