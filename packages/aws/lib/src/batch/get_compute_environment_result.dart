// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compute_environment_update_policy.dart';

/// Result data returned by getComputeEnvironment.
class GetComputeEnvironmentResult {
  /// ARN of the compute environment.
  final String arn;

  /// ARN of the underlying Amazon ECS cluster used by the compute environment.
  final String ecsClusterArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  final String serviceRole;

  /// State of the compute environment (for example, `ENABLED` or `DISABLED`). If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.
  final String state;

  /// Current status of the compute environment (for example, `CREATING` or `VALID`).
  final String status;

  /// Short, human-readable string to provide additional details about the current status of the compute environment.
  final String statusReason;

  /// Key-value map of resource tags
  final Map<String, String> tags;

  /// Type of the compute environment (for example, `MANAGED` or `UNMANAGED`).
  final String type;

  /// Specifies the infrastructure update policy for the compute environment.
  final List<GetComputeEnvironmentUpdatePolicy> updatePolicies;

  /// Creates a new [GetComputeEnvironmentResult].
  /// [arn] ARN of the compute environment.
  /// [ecsClusterArn] ARN of the underlying Amazon ECS cluster used by the compute environment.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [serviceRole] ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  /// [state] State of the compute environment (for example, `ENABLED` or `DISABLED`). If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.
  /// [status] Current status of the compute environment (for example, `CREATING` or `VALID`).
  /// [statusReason] Short, human-readable string to provide additional details about the current status of the compute environment.
  /// [tags] Key-value map of resource tags
  /// [type] Type of the compute environment (for example, `MANAGED` or `UNMANAGED`).
  /// [updatePolicies] Specifies the infrastructure update policy for the compute environment.
  GetComputeEnvironmentResult({
    required this.arn,
    required this.ecsClusterArn,
    required this.id,
    required this.name,
    required this.region,
    required this.serviceRole,
    required this.state,
    required this.status,
    required this.statusReason,
    required this.tags,
    required this.type,
    required this.updatePolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['ecsClusterArn'] = ecsClusterArn;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['serviceRole'] = serviceRole;
    map['state'] = state;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['tags'] = tags;
    map['type'] = type;
    map['updatePolicies'] = pulumi.Input.encodeList<
        GetComputeEnvironmentUpdatePolicy,
        Map<String, dynamic>>(updatePolicies, (value) => value.toMap());
    return map;
  }

  factory GetComputeEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetComputeEnvironmentResult(
      arn: map['arn'] as String,
      ecsClusterArn: map['ecsClusterArn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      serviceRole: map['serviceRole'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      updatePolicies:
          pulumi.Input.decodeList<GetComputeEnvironmentUpdatePolicy>(
              map['updatePolicies'],
              (value) => GetComputeEnvironmentUpdatePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
