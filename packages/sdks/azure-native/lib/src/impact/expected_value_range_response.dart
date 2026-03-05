// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Max and Min Threshold values for the metric
class ExpectedValueRangeResponse {
  /// Max threshold value for the metric
  final pulumi.Input<double> max;
  /// Min threshold value for the metric
  final pulumi.Input<double> min;

  /// Creates a new [ExpectedValueRangeResponse].
  /// [max] Max threshold value for the metric
  /// [min] Min threshold value for the metric
  ExpectedValueRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory ExpectedValueRangeResponse.fromMap(Map<String, dynamic> map) {
    return ExpectedValueRangeResponse(
      max: pulumi.Input.fromValue(map['max'] as double),
      min: pulumi.Input.fromValue(map['min'] as double),
    );
  }
}

