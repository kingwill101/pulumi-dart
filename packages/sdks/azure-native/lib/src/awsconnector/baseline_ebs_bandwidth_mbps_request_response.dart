// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BaselineEbsBandwidthMbpsRequest
class BaselineEbsBandwidthMbpsRequestResponse {
  /// The maximum value in Mbps.
  final pulumi.Input<int>? max;
  /// The minimum value in Mbps.
  final pulumi.Input<int>? min;

  /// Creates a new [BaselineEbsBandwidthMbpsRequestResponse].
  /// [max] The maximum value in Mbps.
  /// [min] The minimum value in Mbps.
  BaselineEbsBandwidthMbpsRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory BaselineEbsBandwidthMbpsRequestResponse.fromMap(Map<String, dynamic> map) {
    return BaselineEbsBandwidthMbpsRequestResponse(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

