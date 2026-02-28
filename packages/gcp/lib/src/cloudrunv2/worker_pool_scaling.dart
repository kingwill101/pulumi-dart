// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolScaling {
  /// The total number of instances in manual scaling mode.
  final int? manualInstanceCount;

  /// The maximum count of instances distributed among revisions based on the specified instance split percentages.
  final int? maxInstanceCount;

  /// The minimum count of instances distributed among revisions based on the specified instance split percentages.
  final int? minInstanceCount;

  /// The scaling mode for the worker pool. It defaults to MANUAL.
  /// Possible values are: `AUTOMATIC`, `MANUAL`.
  final String? scalingMode;

  /// Creates a new [WorkerPoolScaling].
  /// [manualInstanceCount] The total number of instances in manual scaling mode.
  /// [maxInstanceCount] The maximum count of instances distributed among revisions based on the specified instance split percentages.
  /// [minInstanceCount] The minimum count of instances distributed among revisions based on the specified instance split percentages.
  /// [scalingMode] The scaling mode for the worker pool. It defaults to MANUAL.
  WorkerPoolScaling({
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

  factory WorkerPoolScaling.fromMap(Map<String, dynamic> map) {
    return WorkerPoolScaling(
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
