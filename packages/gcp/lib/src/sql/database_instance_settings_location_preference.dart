// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsLocationPreference {
  /// A GAE application whose zone to remain
  /// in. Must be in the same region as this instance.
  final String? followGaeApplication;

  /// The preferred Compute Engine zone for the secondary/failover.
  final String? secondaryZone;

  /// The preferred compute engine
  /// [zone](https://cloud.google.com/compute/docs/zones?hl=en).
  final String? zone;

  /// Creates a new [DatabaseInstanceSettingsLocationPreference].
  /// [followGaeApplication] A GAE application whose zone to remain
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover.
  /// [zone] The preferred compute engine
  DatabaseInstanceSettingsLocationPreference({
    this.followGaeApplication,
    this.secondaryZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followGaeApplication': ?followGaeApplication,
      'secondaryZone': ?secondaryZone,
      'zone': ?zone,
    };
  }

  factory DatabaseInstanceSettingsLocationPreference.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsLocationPreference(
      followGaeApplication: map['followGaeApplication'] == null
          ? null
          : map['followGaeApplication'] as String,
      secondaryZone: map['secondaryZone'] == null
          ? null
          : map['secondaryZone'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
