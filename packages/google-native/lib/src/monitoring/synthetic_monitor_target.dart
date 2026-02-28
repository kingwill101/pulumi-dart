// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_function_v2_target.dart';

/// Describes a Synthetic Monitor to be invoked by Uptime.
class SyntheticMonitorTarget {
  /// Target a Synthetic Monitor GCFv2 instance.
  final CloudFunctionV2Target? cloudFunctionV2;

  /// Creates a new [SyntheticMonitorTarget].
  /// [cloudFunctionV2] Target a Synthetic Monitor GCFv2 instance.
  SyntheticMonitorTarget({
    this.cloudFunctionV2,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudFunctionV2Value = cloudFunctionV2;
    if (cloudFunctionV2Value != null) {
      map['cloudFunctionV2'] = cloudFunctionV2Value.toMap();
    }
    return map;
  }

  factory SyntheticMonitorTarget.fromMap(Map<String, dynamic> map) {
    return SyntheticMonitorTarget(
      cloudFunctionV2: map['cloudFunctionV2'] == null
          ? null
          : CloudFunctionV2Target.fromMap(
              (map['cloudFunctionV2'] as Map).cast<String, dynamic>()),
    );
  }
}
