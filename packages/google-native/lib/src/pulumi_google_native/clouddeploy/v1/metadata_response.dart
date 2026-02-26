// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rollout_metadata_response.dart';
import 'cloud_run_metadata_response.dart';

/// Metadata includes information associated with a `Rollout`.
class MetadataResponse {
  /// AutomationRolloutMetadata contains the information about the interactions between Automation service and this rollout.
  final AutomationRolloutMetadataResponse automation;

  /// The name of the Cloud Run Service that is associated with a `Rollout`.
  final CloudRunMetadataResponse cloudRun;

  MetadataResponse({
    required this.automation,
    required this.cloudRun,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automation'] = automation.toMap();
    map['cloudRun'] = cloudRun.toMap();
    return map;
  }

  factory MetadataResponse.fromMap(Map<String, dynamic> map) {
    return MetadataResponse(
      automation: AutomationRolloutMetadataResponse.fromMap(
          (map['automation'] as Map).cast<String, dynamic>()),
      cloudRun: CloudRunMetadataResponse.fromMap(
          (map['cloudRun'] as Map).cast<String, dynamic>()),
    );
  }
}
