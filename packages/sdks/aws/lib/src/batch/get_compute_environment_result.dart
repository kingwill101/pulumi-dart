// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compute_environment_update_policy.dart';

/// Result data returned by getComputeEnvironment.
class GetComputeEnvironmentResult {
  /// ARN of the compute environment.
  final String? arn;
  /// ARN of the underlying Amazon ECS cluster used by the compute environment.
  final String? ecsClusterArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  final String? serviceRole;
  /// State of the compute environment (for example, `ENABLED` or `DISABLED`). If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.
  final String? state;
  /// Current status of the compute environment (for example, `CREATING` or `VALID`).
  final String? status;
  /// Short, human-readable string to provide additional details about the current status of the compute environment.
  final String? statusReason;
  /// Key-value map of resource tags
  final Map<String, String>? tags;
  /// Type of the compute environment (for example, `MANAGED` or `UNMANAGED`).
  final String? type;
  /// Specifies the infrastructure update policy for the compute environment.
  final List<GetComputeEnvironmentUpdatePolicy>? updatePolicies;

  /// Creates a new [GetComputeEnvironmentResult].
  /// [arn] ARN of the compute environment.
  /// [ecsClusterArn] ARN of the underlying Amazon ECS cluster used by the compute environment.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [serviceRole] ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  /// [state] State of the compute environment (for example, `ENABLED` or `DISABLED`). If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.
  /// [status] Current status of the compute environment (for example, `CREATING` or `VALID`).
  /// [statusReason] Short, human-readable string to provide additional details about the current status of the compute environment.
  /// [tags] Key-value map of resource tags
  /// [type] Type of the compute environment (for example, `MANAGED` or `UNMANAGED`).
  /// [updatePolicies] Specifies the infrastructure update policy for the compute environment.
  const GetComputeEnvironmentResult({
    this.arn,
    this.ecsClusterArn,
    this.id,
    this.name,
    this.region,
    this.serviceRole,
    this.state,
    this.status,
    this.statusReason,
    this.tags,
    this.type,
    this.updatePolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ecsClusterArn': ?ecsClusterArn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'serviceRole': ?serviceRole,
      'state': ?state,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'type': ?type,
      'updatePolicies': ?(() { final guardedValue = updatePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetComputeEnvironmentUpdatePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetComputeEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetComputeEnvironmentResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ecsClusterArn: (() { final guardedValue = map['ecsClusterArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatePolicies: (() { final guardedValue = map['updatePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetComputeEnvironmentUpdatePolicy>(guardedValue, (value) => GetComputeEnvironmentUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
