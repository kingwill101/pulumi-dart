// ignore_for_file: unused_element, unnecessary_cast

class GetServiceScaling {
  /// Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  final int manualInstanceCount;

  /// Combined maximum number of instances for all revisions receiving traffic.
  final int maxInstanceCount;

  /// Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  final int minInstanceCount;

  /// The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service. Possible values: ["AUTOMATIC", "MANUAL"]
  final String scalingMode;

  GetServiceScaling({
    required this.manualInstanceCount,
    required this.maxInstanceCount,
    required this.minInstanceCount,
    required this.scalingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['manualInstanceCount'] = manualInstanceCount;
    map['maxInstanceCount'] = maxInstanceCount;
    map['minInstanceCount'] = minInstanceCount;
    map['scalingMode'] = scalingMode;
    return map;
  }

  factory GetServiceScaling.fromMap(Map<String, dynamic> map) {
    return GetServiceScaling(
      manualInstanceCount: map['manualInstanceCount'] as int,
      maxInstanceCount: map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] as int,
      scalingMode: map['scalingMode'] as String,
    );
  }
}
