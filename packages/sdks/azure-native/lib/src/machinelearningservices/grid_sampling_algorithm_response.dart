// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that exhaustively generates every value combination in the space
class GridSamplingAlgorithmResponse {
  /// Expected value is 'Grid'.
  final pulumi.Input<String> samplingAlgorithmType;

  /// Creates a new [GridSamplingAlgorithmResponse].
  /// [samplingAlgorithmType] Expected value is 'Grid'.
  const GridSamplingAlgorithmResponse({
    required this.samplingAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingAlgorithmType': samplingAlgorithmType,
    };
  }

  factory GridSamplingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return GridSamplingAlgorithmResponse(
      samplingAlgorithmType: pulumi.Input.fromValue(map['samplingAlgorithmType'] as String),
    );
  }
}

