// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../compute_environment_compute_resources/compute_environment_compute_resources.dart';
import '../compute_environment_eks_configuration/compute_environment_eks_configuration.dart';
import '../compute_environment_update_policy/compute_environment_update_policy.dart';

/// The set of arguments for ComputeEnvironment.
class ComputeEnvironmentArgs {
  /// Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  final Input<ComputeEnvironmentComputeResources>? computeResources;

  /// Details for the Amazon EKS cluster that supports the compute environment. See details below.
  final Input<ComputeEnvironmentEksConfiguration>? eksConfiguration;

  /// The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed. If omitted, the provider will assign a random, unique name.
  final Input<String>? name;

  /// Creates a unique compute environment name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  final Input<String>? serviceRole;

  /// The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues. Valid items are `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  final Input<String>? state;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  final Input<String> type;

  /// Specifies the infrastructure update policy for the compute environment. See details below.
  final Input<ComputeEnvironmentUpdatePolicy>? updatePolicy;

  ComputeEnvironmentArgs({
    this.computeResources,
    this.eksConfiguration,
    this.name,
    this.namePrefix,
    this.region,
    this.serviceRole,
    this.state,
    this.tags,
    required this.type,
    this.updatePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeResourcesValue = computeResources;
    if (computeResourcesValue != null) {
      map['computeResources'] = Input.mapOptionalInputValue<
              ComputeEnvironmentComputeResources, Map<String, dynamic>>(
          computeResourcesValue, (value) => value.toMap());
    }
    final eksConfigurationValue = eksConfiguration;
    if (eksConfigurationValue != null) {
      map['eksConfiguration'] = Input.mapOptionalInputValue<
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
      map['updatePolicy'] = Input.mapOptionalInputValue<
          ComputeEnvironmentUpdatePolicy,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ComputeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentArgs(
      computeResources:
          Input.asOptionalInput<ComputeEnvironmentComputeResources>(
              map['computeResources']),
      eksConfiguration:
          Input.asOptionalInput<ComputeEnvironmentEksConfiguration>(
              map['eksConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceRole: Input.asOptionalInput<String>(map['serviceRole']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
      updatePolicy: Input.asOptionalInput<ComputeEnvironmentUpdatePolicy>(
          map['updatePolicy']),
    );
  }
}
