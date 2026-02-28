// ignore_for_file: unused_element, unnecessary_cast

class ReleaseReleaseRequirements {
  /// A list of releases from which a unit can be upgraded to this one
  /// (optional). If left empty no constraints will be applied. When provided,
  /// unit upgrade requests to this release will check and enforce this
  /// constraint.
  final List<String>? upgradeableFromReleases;

  /// Creates a new [ReleaseReleaseRequirements].
  /// [upgradeableFromReleases] A list of releases from which a unit can be upgraded to this one
  ReleaseReleaseRequirements({
    this.upgradeableFromReleases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final upgradeableFromReleasesValue = upgradeableFromReleases;
    if (upgradeableFromReleasesValue != null) {
      map['upgradeableFromReleases'] = upgradeableFromReleasesValue;
    }
    return map;
  }

  factory ReleaseReleaseRequirements.fromMap(Map<String, dynamic> map) {
    return ReleaseReleaseRequirements(
      upgradeableFromReleases: map['upgradeableFromReleases'] == null
          ? null
          : (map['upgradeableFromReleases'] as List).cast<String>(),
    );
  }
}
