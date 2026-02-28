// ignore_for_file: unused_element, unnecessary_cast

/// CutoverForecast holds information about future CutoverJobs of a MigratingVm.
class CutoverForecastResponseVmmigrationV1alpha1 {
  /// Estimation of the CutoverJob duration.
  final String estimatedCutoverJobDuration;

  /// Creates a new [CutoverForecastResponseVmmigrationV1alpha1].
  /// [estimatedCutoverJobDuration] Estimation of the CutoverJob duration.
  CutoverForecastResponseVmmigrationV1alpha1({
    required this.estimatedCutoverJobDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedCutoverJobDuration'] = estimatedCutoverJobDuration;
    return map;
  }

  factory CutoverForecastResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return CutoverForecastResponseVmmigrationV1alpha1(
      estimatedCutoverJobDuration: map['estimatedCutoverJobDuration'] as String,
    );
  }
}
