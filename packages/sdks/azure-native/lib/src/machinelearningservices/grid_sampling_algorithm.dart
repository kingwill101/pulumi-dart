// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Sampling Algorithm that exhaustively generates every value combination in the space
class GridSamplingAlgorithm {
  /// Expected value is 'Grid'.
  final pulumi.Input<String> samplingAlgorithmType;

  /// Creates a new [GridSamplingAlgorithm].
  /// [samplingAlgorithmType] Expected value is 'Grid'.
  GridSamplingAlgorithm({
    required this.samplingAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingAlgorithmType': samplingAlgorithmType,
    };
  }

  factory GridSamplingAlgorithm.fromMap(Map<String, dynamic> map) {
    return GridSamplingAlgorithm(
      samplingAlgorithmType: (map['samplingAlgorithmType'] as String).input(),
    );
  }
}

