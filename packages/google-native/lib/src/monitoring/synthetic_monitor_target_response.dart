// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_function_v2_target_response.dart';

/// Describes a Synthetic Monitor to be invoked by Uptime.
class SyntheticMonitorTargetResponse {
  /// Target a Synthetic Monitor GCFv2 instance.
  final CloudFunctionV2TargetResponse cloudFunctionV2;

  /// Creates a new [SyntheticMonitorTargetResponse].
  /// [cloudFunctionV2] Target a Synthetic Monitor GCFv2 instance.
  SyntheticMonitorTargetResponse({
    required this.cloudFunctionV2,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudFunctionV2'] = cloudFunctionV2.toMap();
    return map;
  }

  factory SyntheticMonitorTargetResponse.fromMap(Map<String, dynamic> map) {
    return SyntheticMonitorTargetResponse(
      cloudFunctionV2: CloudFunctionV2TargetResponse.fromMap(
          (map['cloudFunctionV2'] as Map).cast<String, dynamic>()),
    );
  }
}
