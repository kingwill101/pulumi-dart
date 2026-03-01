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
    pulumi.Output<String>? arn,
    pulumi.Output<ComputeEnvironmentComputeResources>? computeResources,
    pulumi.Output<String>? ecsClusterArn,
    pulumi.Output<ComputeEnvironmentEksConfiguration>? eksConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceRole,
    pulumi.Output<String>? state,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<ComputeEnvironmentUpdatePolicy>? updatePolicy,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      computeResources = pulumi.Input.asOptionalInput<ComputeEnvironmentComputeResources>(computeResources),
      ecsClusterArn = pulumi.Input.asOptionalInput<String>(ecsClusterArn),
      eksConfiguration = pulumi.Input.asOptionalInput<ComputeEnvironmentEksConfiguration>(eksConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole),
      state = pulumi.Input.asOptionalInput<String>(state),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      updatePolicy = pulumi.Input.asOptionalInput<ComputeEnvironmentUpdatePolicy>(updatePolicy);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      computeResources: map['computeResources'] == null ? null : pulumi.Output.create<ComputeEnvironmentComputeResources>(ComputeEnvironmentComputeResources.fromMap((map['computeResources'] as Map).cast<String, dynamic>())),
      ecsClusterArn: map['ecsClusterArn'] == null ? null : pulumi.Output.create<String>(map['ecsClusterArn'] as String),
      eksConfiguration: map['eksConfiguration'] == null ? null : pulumi.Output.create<ComputeEnvironmentEksConfiguration>(ComputeEnvironmentEksConfiguration.fromMap((map['eksConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceRole: map['serviceRole'] == null ? null : pulumi.Output.create<String>(map['serviceRole'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updatePolicy: map['updatePolicy'] == null ? null : pulumi.Output.create<ComputeEnvironmentUpdatePolicy>(ComputeEnvironmentUpdatePolicy.fromMap((map['updatePolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

