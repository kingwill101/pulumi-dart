// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the feature window
class FeatureWindowResponse {
  /// Specifies the feature window end time
  final pulumi.Input<String>? featureWindowEnd;
  /// Specifies the feature window start time
  final pulumi.Input<String>? featureWindowStart;

  /// Creates a new [FeatureWindowResponse].
  /// [featureWindowEnd] Specifies the feature window end time
  /// [featureWindowStart] Specifies the feature window start time
  const FeatureWindowResponse({
    this.featureWindowEnd,
    this.featureWindowStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureWindowEnd': ?featureWindowEnd,
      'featureWindowStart': ?featureWindowStart,
    };
  }

  factory FeatureWindowResponse.fromMap(Map<String, dynamic> map) {
    return FeatureWindowResponse(
      featureWindowEnd: (() { final guardedValue = map['featureWindowEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureWindowStart: (() { final guardedValue = map['featureWindowStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
