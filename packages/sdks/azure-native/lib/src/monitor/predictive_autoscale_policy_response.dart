// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters for enabling predictive autoscale.
class PredictiveAutoscalePolicyResponse {
  /// the amount of time to specify by which instances are launched in advance. It must be between 1 minute and 60 minutes in ISO 8601 format.
  final pulumi.Input<String>? scaleLookAheadTime;
  /// the predictive autoscale mode
  final pulumi.Input<String> scaleMode;

  /// Creates a new [PredictiveAutoscalePolicyResponse].
  /// [scaleLookAheadTime] the amount of time to specify by which instances are launched in advance. It must be between 1 minute and 60 minutes in ISO 8601 format.
  /// [scaleMode] the predictive autoscale mode
  PredictiveAutoscalePolicyResponse({
    this.scaleLookAheadTime,
    required this.scaleMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleLookAheadTime': ?scaleLookAheadTime,
      'scaleMode': scaleMode,
    };
  }

  factory PredictiveAutoscalePolicyResponse.fromMap(Map<String, dynamic> map) {
    return PredictiveAutoscalePolicyResponse(
      scaleLookAheadTime: map['scaleLookAheadTime'] == null ? null : (map['scaleLookAheadTime']! as String).input(),
      scaleMode: (map['scaleMode'] as String).input(),
    );
  }
}

