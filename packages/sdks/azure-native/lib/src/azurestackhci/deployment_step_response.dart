// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Step of AzureStackHCI Cluster.
class DeploymentStepResponse {
  /// Description of step.
  final pulumi.Input<String> description;
  /// End time of step.
  final pulumi.Input<String> endTimeUtc;
  /// List of exceptions in AzureStackHCI Cluster Deployment.
  final pulumi.Input<List<String>> exception;
  /// FullStepIndex of step.
  final pulumi.Input<String> fullStepIndex;
  /// Name of step.
  final pulumi.Input<String> name;
  /// Start time of step.
  final pulumi.Input<String> startTimeUtc;
  /// Status of step. Allowed values are 'Error', 'Success', 'InProgress'
  final pulumi.Input<String> status;
  /// List of nested steps of AzureStackHCI Cluster Deployment.
  final pulumi.Input<List<DeploymentStepResponse>> steps;

  /// Creates a new [DeploymentStepResponse].
  /// [description] Description of step.
  /// [endTimeUtc] End time of step.
  /// [exception] List of exceptions in AzureStackHCI Cluster Deployment.
  /// [fullStepIndex] FullStepIndex of step.
  /// [name] Name of step.
  /// [startTimeUtc] Start time of step.
  /// [status] Status of step. Allowed values are 'Error', 'Success', 'InProgress'
  /// [steps] List of nested steps of AzureStackHCI Cluster Deployment.
  DeploymentStepResponse({
    required this.description,
    required this.endTimeUtc,
    required this.exception,
    required this.fullStepIndex,
    required this.name,
    required this.startTimeUtc,
    required this.status,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'endTimeUtc': endTimeUtc,
      'exception': exception,
      'fullStepIndex': fullStepIndex,
      'name': name,
      'startTimeUtc': startTimeUtc,
      'status': status,
      'steps': pulumi.Input.mapInputValue<List<DeploymentStepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<DeploymentStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentStepResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStepResponse(
      description: (map['description'] as String).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      exception: ((map['exception'] as List).cast<String>()).input(),
      fullStepIndex: (map['fullStepIndex'] as String).input(),
      name: (map['name'] as String).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
      steps: (pulumi.Input.decodeList<DeploymentStepResponse>(map['steps'], (value) => DeploymentStepResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

