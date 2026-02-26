// ignore_for_file: unused_element, unnecessary_cast

/// CutoverForecast holds information about future CutoverJobs of a MigratingVm.
class CutoverForecastResponse2 {
  /// Estimation of the CutoverJob duration.
  final String estimatedCutoverJobDuration;

  CutoverForecastResponse2({
    required this.estimatedCutoverJobDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedCutoverJobDuration'] = estimatedCutoverJobDuration;
    return map;
  }

  factory CutoverForecastResponse2.fromMap(Map<String, dynamic> map) {
    return CutoverForecastResponse2(
      estimatedCutoverJobDuration: map['estimatedCutoverJobDuration'] as String,
    );
  }
}
