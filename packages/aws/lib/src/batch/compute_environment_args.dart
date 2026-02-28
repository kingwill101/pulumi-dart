// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_environment_compute_resources.dart';
import 'compute_environment_eks_configuration.dart';
import 'compute_environment_update_policy.dart';

/// {@template pulumi_batch_compute_environment_compute_environment_args_doc}
/// The set of arguments for ComputeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_batch_compute_environment_compute_environment_args_doc}
class ComputeEnvironmentArgs {
  /// Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  final pulumi.Input<ComputeEnvironmentComputeResources>? computeResources;

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

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  final pulumi.Input<String> type;

  /// Specifies the infrastructure update policy for the compute environment. See details below.
  final pulumi.Input<ComputeEnvironmentUpdatePolicy>? updatePolicy;

  /// Creates a new [ComputeEnvironmentArgs].
  /// [computeResources] Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  /// [eksConfiguration] Details for the Amazon EKS cluster that supports the compute environment. See details below.
  /// [name] The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique compute environment name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRole] The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  /// [state] The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues. Valid items are `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  /// [updatePolicy] Specifies the infrastructure update policy for the compute environment. See details below.
  ComputeEnvironmentArgs({
    ComputeEnvironmentComputeResources? computeResources,
    ComputeEnvironmentEksConfiguration? eksConfiguration,
    String? name,
    String? namePrefix,
    String? region,
    String? serviceRole,
    String? state,
    Map<String, String>? tags,
    required String type,
    ComputeEnvironmentUpdatePolicy? updatePolicy,
  })  : computeResources =
            pulumi.Input.asOptionalInput<ComputeEnvironmentComputeResources>(
                computeResources),
        eksConfiguration =
            pulumi.Input.asOptionalInput<ComputeEnvironmentEksConfiguration>(
                eksConfiguration),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole),
        state = pulumi.Input.asOptionalInput<String>(state),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        type = pulumi.Input.asInput<String>(type),
        updatePolicy =
            pulumi.Input.asOptionalInput<ComputeEnvironmentUpdatePolicy>(
                updatePolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeResourcesValue = computeResources;
    if (computeResourcesValue != null) {
      map['computeResources'] = pulumi.Input.mapOptionalInputValue<
              ComputeEnvironmentComputeResources, Map<String, dynamic>>(
          computeResourcesValue, (value) => value.toMap());
    }
    final eksConfigurationValue = eksConfiguration;
    if (eksConfigurationValue != null) {
      map['eksConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ComputeEnvironmentEksConfiguration, Map<String, dynamic>>(
          eksConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceRoleValue = serviceRole;
    if (serviceRoleValue != null) {
      map['serviceRole'] = serviceRoleValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    final updatePolicyValue = updatePolicy;
    if (updatePolicyValue != null) {
      map['updatePolicy'] = pulumi.Input.mapOptionalInputValue<
          ComputeEnvironmentUpdatePolicy,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ComputeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentArgs(
      computeResources: map['computeResources'] == null
          ? null
          : ComputeEnvironmentComputeResources.fromMap(
              (map['computeResources'] as Map).cast<String, dynamic>()),
      eksConfiguration: map['eksConfiguration'] == null
          ? null
          : ComputeEnvironmentEksConfiguration.fromMap(
              (map['eksConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceRole:
          map['serviceRole'] == null ? null : map['serviceRole'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      updatePolicy: map['updatePolicy'] == null
          ? null
          : ComputeEnvironmentUpdatePolicy.fromMap(
              (map['updatePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
