// ignore_for_file: unused_element, unnecessary_cast

class ServiceScaling {
  /// Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  final int? manualInstanceCount;

  /// Combined maximum number of instances for all revisions receiving traffic.
  final int? maxInstanceCount;

  /// Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  final int? minInstanceCount;

  /// The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service.
  /// Possible values are: `AUTOMATIC`, `MANUAL`.
  final String? scalingMode;

  /// Creates a new [ServiceScaling].
  /// [manualInstanceCount] Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  /// [maxInstanceCount] Combined maximum number of instances for all revisions receiving traffic.
  /// [minInstanceCount] Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  /// [scalingMode] The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service.
  ServiceScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final manualInstanceCountValue = manualInstanceCount;
    if (manualInstanceCountValue != null) {
      map['manualInstanceCount'] = manualInstanceCountValue;
    }
    final maxInstanceCountValue = maxInstanceCount;
    if (maxInstanceCountValue != null) {
      map['maxInstanceCount'] = maxInstanceCountValue;
    }
    final minInstanceCountValue = minInstanceCount;
    if (minInstanceCountValue != null) {
      map['minInstanceCount'] = minInstanceCountValue;
    }
    final scalingModeValue = scalingMode;
    if (scalingModeValue != null) {
      map['scalingMode'] = scalingModeValue;
    }
    return map;
  }

  factory ServiceScaling.fromMap(Map<String, dynamic> map) {
    return ServiceScaling(
      manualInstanceCount: map['manualInstanceCount'] == null
          ? null
          : map['manualInstanceCount'] as int,
      maxInstanceCount: map['maxInstanceCount'] == null
          ? null
          : map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null
          ? null
          : map['minInstanceCount'] as int,
      scalingMode:
          map['scalingMode'] == null ? null : map['scalingMode'] as String,
    );
  }
}
