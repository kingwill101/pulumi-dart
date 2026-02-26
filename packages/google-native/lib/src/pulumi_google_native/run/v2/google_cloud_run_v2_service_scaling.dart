// ignore_for_file: unused_element, unnecessary_cast

/// Scaling settings applied at the service level rather than at the revision level.
class GoogleCloudRunV2ServiceScaling {
  /// total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. (ALPHA)
  final int? minInstanceCount;

  GoogleCloudRunV2ServiceScaling({
    this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minInstanceCountValue = minInstanceCount;
    if (minInstanceCountValue != null) {
      map['minInstanceCount'] = minInstanceCountValue;
    }
    return map;
  }

  factory GoogleCloudRunV2ServiceScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ServiceScaling(
      minInstanceCount: map['minInstanceCount'] == null
          ? null
          : map['minInstanceCount'] as int,
    );
  }
}
