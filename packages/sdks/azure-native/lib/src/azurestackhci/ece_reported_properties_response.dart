// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ece_action_status_response.dart';

/// The DeploymentStatus of AzureStackHCI Cluster.
class EceReportedPropertiesResponse {
  /// Deployment status of AzureStackHCI Cluster Deployment.
  final pulumi.Input<EceActionStatusResponse> deploymentStatus;
  /// validation status of AzureStackHCI Cluster Deployment.
  final pulumi.Input<EceActionStatusResponse> validationStatus;

  /// Creates a new [EceReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of AzureStackHCI Cluster Deployment.
  /// [validationStatus] validation status of AzureStackHCI Cluster Deployment.
  EceReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus': pulumi.Input.mapInputValue<EceActionStatusResponse, Map<String, dynamic>>(deploymentStatus, (value) => value.toMap()),
      'validationStatus': pulumi.Input.mapInputValue<EceActionStatusResponse, Map<String, dynamic>>(validationStatus, (value) => value.toMap()),
    };
  }

  factory EceReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EceReportedPropertiesResponse(
      deploymentStatus: pulumi.Input.fromValue(EceActionStatusResponse.fromMap((map['deploymentStatus']! as Map).cast<String, dynamic>())),
      validationStatus: pulumi.Input.fromValue(EceActionStatusResponse.fromMap((map['validationStatus']! as Map).cast<String, dynamic>())),
    );
  }
}

