// ignore_for_file: unused_element, unnecessary_cast

/// Settings for revision-level scaling settings.
class GoogleCloudRunV2RevisionScaling {
  /// Maximum number of serving instances that this resource should have.
  final int? maxInstanceCount;

  /// Minimum number of serving instances that this resource should have.
  final int? minInstanceCount;

  GoogleCloudRunV2RevisionScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxInstanceCountValue = maxInstanceCount;
    if (maxInstanceCountValue != null) {
      map['maxInstanceCount'] = maxInstanceCountValue;
    }
    final minInstanceCountValue = minInstanceCount;
    if (minInstanceCountValue != null) {
      map['minInstanceCount'] = minInstanceCountValue;
    }
    return map;
  }

  factory GoogleCloudRunV2RevisionScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionScaling(
      maxInstanceCount: map['maxInstanceCount'] == null
          ? null
          : map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null
          ? null
          : map['minInstanceCount'] as int,
    );
  }
}
