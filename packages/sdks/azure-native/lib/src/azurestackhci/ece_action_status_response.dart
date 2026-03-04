// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_step_response.dart';

/// The ECE action plan deployment status for AzureStackHCI Cluster.
class EceActionStatusResponse {
  /// Status of ECE action AzureStackHCI Cluster Deployment.
  final pulumi.Input<String> status;

  /// List of steps of AzureStackHCI Cluster Deployment.
  final pulumi.Input<List<DeploymentStepResponse>> steps;

  /// Creates a new [EceActionStatusResponse].
  /// [status] Status of ECE action AzureStackHCI Cluster Deployment.
  /// [steps] List of steps of AzureStackHCI Cluster Deployment.
  EceActionStatusResponse({required this.status, required this.steps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'steps':
          pulumi.Input.mapInputValue<
            List<DeploymentStepResponse>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<
                  DeploymentStepResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EceActionStatusResponse.fromMap(Map<String, dynamic> map) {
    return EceActionStatusResponse(
      status: pulumi.Input.fromValue(map['status'] as String),
      steps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DeploymentStepResponse>(
          map['steps']!,
          (value) => DeploymentStepResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
