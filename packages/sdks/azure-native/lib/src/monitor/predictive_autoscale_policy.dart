// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'predictive_autoscale_policy_scale_mode.dart';

/// The parameters for enabling predictive autoscale.
class PredictiveAutoscalePolicy {
  /// the amount of time to specify by which instances are launched in advance. It must be between 1 minute and 60 minutes in ISO 8601 format.
  final pulumi.Input<String>? scaleLookAheadTime;

  /// the predictive autoscale mode
  final pulumi.Input<PredictiveAutoscalePolicyScaleMode> scaleMode;

  /// Creates a new [PredictiveAutoscalePolicy].
  /// [scaleLookAheadTime] the amount of time to specify by which instances are launched in advance. It must be between 1 minute and 60 minutes in ISO 8601 format.
  /// [scaleMode] the predictive autoscale mode
  PredictiveAutoscalePolicy({this.scaleLookAheadTime, required this.scaleMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleLookAheadTime': ?scaleLookAheadTime,
      'scaleMode':
          pulumi.Input.mapInputValue<
            PredictiveAutoscalePolicyScaleMode,
            String
          >(scaleMode, (value) => value.wireValue),
    };
  }

  factory PredictiveAutoscalePolicy.fromMap(Map<String, dynamic> map) {
    return PredictiveAutoscalePolicy(
      scaleLookAheadTime: (() {
        final guardedValue = map['scaleLookAheadTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scaleMode: pulumi.Input.fromValue(
        PredictiveAutoscalePolicyScaleMode.fromValue(
          map['scaleMode']! as String,
        ),
      ),
    );
  }
}
