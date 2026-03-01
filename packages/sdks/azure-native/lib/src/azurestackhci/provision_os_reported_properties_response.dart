// ignore_for_file: unused_element, unnecessary_cast

import 'ece_action_status_response.dart';

/// Reported Properties for Provision Os job
class ProvisionOsReportedPropertiesResponse {
  /// Deployment status of job.
  final EceActionStatusResponse deploymentStatus;
  /// The percentage of the job that is complete.
  final int percentComplete;
  /// Validation status of job.
  final EceActionStatusResponse validationStatus;

  /// Creates a new [ProvisionOsReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of job.
  /// [percentComplete] The percentage of the job that is complete.
  /// [validationStatus] Validation status of job.
  ProvisionOsReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.percentComplete,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': deploymentStatus.toMap(),
      'percentComplete': percentComplete,
      'validationStatus': validationStatus.toMap(),
    };
  }

  factory ProvisionOsReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionOsReportedPropertiesResponse(
      deploymentStatus: EceActionStatusResponse.fromMap((map['deploymentStatus'] as Map).cast<String, dynamic>()),
      percentComplete: map['percentComplete'] as int,
      validationStatus: EceActionStatusResponse.fromMap((map['validationStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

