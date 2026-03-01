// ignore_for_file: unused_element, unnecessary_cast


/// Defines a Sampling Algorithm that exhaustively generates every value combination in the space
class GridSamplingAlgorithmResponse {
  /// Expected value is 'Grid'.
  final String samplingAlgorithmType;

  /// Creates a new [GridSamplingAlgorithmResponse].
  /// [samplingAlgorithmType] Expected value is 'Grid'.
  GridSamplingAlgorithmResponse({
    required this.samplingAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingAlgorithmType': samplingAlgorithmType,
    };
  }

  factory GridSamplingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return GridSamplingAlgorithmResponse(
      samplingAlgorithmType: map['samplingAlgorithmType'] as String,
    );
  }
}

