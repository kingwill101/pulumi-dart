// ignore_for_file: unused_element, unnecessary_cast

/// CutoverForecast holds information about future CutoverJobs of a MigratingVm.
class CutoverForecastResponse {
  /// Estimation of the CutoverJob duration.
  final String estimatedCutoverJobDuration;

  CutoverForecastResponse({
    required this.estimatedCutoverJobDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedCutoverJobDuration'] = estimatedCutoverJobDuration;
    return map;
  }

  factory CutoverForecastResponse.fromMap(Map<String, dynamic> map) {
    return CutoverForecastResponse(
      estimatedCutoverJobDuration: map['estimatedCutoverJobDuration'] as String,
    );
  }
}
