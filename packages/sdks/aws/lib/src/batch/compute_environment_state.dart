// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_environment_compute_resources.dart';
import 'compute_environment_eks_configuration.dart';
import 'compute_environment_update_policy.dart';

/// Input properties used for looking up and filtering ComputeEnvironment resources.
class ComputeEnvironmentState {
  /// The Amazon Resource Name (ARN) of the compute environment.
  final pulumi.Input<String>? arn;
  /// Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  final pulumi.Input<ComputeEnvironmentComputeResources>? computeResources;
  /// The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment.
  final pulumi.Input<String>? ecsClusterArn;
  /// Details for the Amazon EKS cluster that supports the compute environment. See details below.
  final pulumi.Input<ComputeEnvironmentEksConfiguration>? eksConfiguration;
  /// The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique compute environment name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  final pulumi.Input<String>? serviceRole;
  /// The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues. Valid items are `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? state;
  /// The current status of the compute environment (for example, CREATING or VALID).
  final pulumi.Input<String>? status;
  /// A short, human-readable string to provide additional details about the current status of the compute environment.
  final pulumi.Input<String>? statusReason;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  final pulumi.Input<String>? type;
  /// Specifies the infrastructure update policy for the compute environment. See details below.
  final pulumi.Input<ComputeEnvironmentUpdatePolicy>? updatePolicy;

  /// Creates a new [ComputeEnvironmentState].
  /// [arn] The Amazon Resource Name (ARN) of the compute environment.
  /// [computeResources] Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  /// [ecsClusterArn] The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment.
  /// [eksConfiguration] Details for the Amazon EKS cluster that supports the compute environment. See details below.
  /// [name] The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique compute environment name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRole] The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  /// [state] The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues. Valid items are `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  /// [status] The current status of the compute environment (for example, CREATING or VALID).
  /// [statusReason] A short, human-readable string to provide additional details about the current status of the compute environment.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  /// [updatePolicy] Specifies the infrastructure update policy for the compute environment. See details below.
  ComputeEnvironmentState({
    this.arn,
    this.computeResources,
    this.ecsClusterArn,
    this.eksConfiguration,
    this.name,
    this.namePrefix,
    this.region,
    this.serviceRole,
    this.state,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.type,
    this.updatePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computeResources': ?pulumi.Input.mapOptionalInputValue<ComputeEnvironmentComputeResources, Map<String, dynamic>>(computeResources, (value) => value.toMap()),
      'ecsClusterArn': ?ecsClusterArn,
      'eksConfiguration': ?pulumi.Input.mapOptionalInputValue<ComputeEnvironmentEksConfiguration, Map<String, dynamic>>(eksConfiguration, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'serviceRole': ?serviceRole,
      'state': ?state,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<ComputeEnvironmentUpdatePolicy, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
    };
  }

  factory ComputeEnvironmentState.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      computeResources: map['computeResources'] == null ? null : (ComputeEnvironmentComputeResources.fromMap((map['computeResources'] as Map).cast<String, dynamic>())).input(),
      ecsClusterArn: map['ecsClusterArn'] == null ? null : (map['ecsClusterArn'] as String).input(),
      eksConfiguration: map['eksConfiguration'] == null ? null : (ComputeEnvironmentEksConfiguration.fromMap((map['eksConfiguration'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceRole: map['serviceRole'] == null ? null : (map['serviceRole'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusReason: map['statusReason'] == null ? null : (map['statusReason'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updatePolicy: map['updatePolicy'] == null ? null : (ComputeEnvironmentUpdatePolicy.fromMap((map['updatePolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

