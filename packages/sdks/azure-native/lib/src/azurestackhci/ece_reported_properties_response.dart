// ignore_for_file: unused_element, unnecessary_cast

import 'ece_action_status_response.dart';

/// The DeploymentStatus of AzureStackHCI Cluster.
class EceReportedPropertiesResponse {
  /// Deployment status of AzureStackHCI Cluster Deployment.
  final EceActionStatusResponse deploymentStatus;
  /// validation status of AzureStackHCI Cluster Deployment.
  final EceActionStatusResponse validationStatus;

  /// Creates a new [EceReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of AzureStackHCI Cluster Deployment.
  /// [validationStatus] validation status of AzureStackHCI Cluster Deployment.
  EceReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': deploymentStatus.toMap(),
      'validationStatus': validationStatus.toMap(),
    };
  }

  factory EceReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EceReportedPropertiesResponse(
      deploymentStatus: EceActionStatusResponse.fromMap((map['deploymentStatus'] as Map).cast<String, dynamic>()),
      validationStatus: EceActionStatusResponse.fromMap((map['validationStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

