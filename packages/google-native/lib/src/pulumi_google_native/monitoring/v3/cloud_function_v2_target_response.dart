// ignore_for_file: unused_element, unnecessary_cast

import 'monitored_resource_response2.dart';

/// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
class CloudFunctionV2TargetResponse {
  /// The cloud_run_revision Monitored Resource associated with the GCFv2. The Synthetic Monitor execution results (metrics, logs, and spans) are reported against this Monitored Resource. This field is output only.
  final MonitoredResourceResponse2 cloudRunRevision;

  /// Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functions/{function} Required.
  final String name;

  CloudFunctionV2TargetResponse({
    required this.cloudRunRevision,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRunRevision'] = cloudRunRevision.toMap();
    map['name'] = name;
    return map;
  }

  factory CloudFunctionV2TargetResponse.fromMap(Map<String, dynamic> map) {
    return CloudFunctionV2TargetResponse(
      cloudRunRevision: MonitoredResourceResponse2.fromMap(
          (map['cloudRunRevision'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
