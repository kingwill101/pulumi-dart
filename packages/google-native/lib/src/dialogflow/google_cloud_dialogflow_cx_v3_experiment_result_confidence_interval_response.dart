// ignore_for_file: unused_element, unnecessary_cast


/// A confidence interval is a range of possible values for the experiment objective you are trying to measure.
class GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse {
  /// The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  final double confidenceLevel;
  /// Lower bound of the interval.
  final double lowerBound;
  /// The percent change between an experiment metric's value and the value for its control.
  final double ratio;
  /// Upper bound of the interval.
  final double upperBound;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse].
  /// [confidenceLevel] The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  /// [lowerBound] Lower bound of the interval.
  /// [ratio] The percent change between an experiment metric's value and the value for its control.
  /// [upperBound] Upper bound of the interval.
  GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse({
    required this.confidenceLevel,
    required this.lowerBound,
    required this.ratio,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': confidenceLevel,
      'lowerBound': lowerBound,
      'ratio': ratio,
      'upperBound': upperBound,
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse(
      confidenceLevel: map['confidenceLevel'] as double,
      lowerBound: map['lowerBound'] as double,
      ratio: map['ratio'] as double,
      upperBound: map['upperBound'] as double,
    );
  }
}

