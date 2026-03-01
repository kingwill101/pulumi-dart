// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details.dart';

/// {@template pulumi_dlm_lifecycle_policy_lifecycle_policy_args_doc}
/// The set of arguments for LifecyclePolicy.
/// {@endtemplate}
/// {@macro pulumi_dlm_lifecycle_policy_lifecycle_policy_args_doc}
class LifecyclePolicyArgs {
  /// Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  final pulumi.Input<String>? defaultPolicy;
  /// A description for the DLM lifecycle policy.
  final pulumi.Input<String> description;
  /// The ARN of an IAM role that is able to be assumed by the DLM service.
  final pulumi.Input<String> executionRoleArn;
  /// See the `policy_details` configuration block. Max of 1.
  final pulumi.Input<LifecyclePolicyPolicyDetails> policyDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  final pulumi.Input<String>? state;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LifecyclePolicyArgs].
  /// [defaultPolicy] Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  /// [description] A description for the DLM lifecycle policy.
  /// [executionRoleArn] The ARN of an IAM role that is able to be assumed by the DLM service.
  /// [policyDetails] See the `policy_details` configuration block. Max of 1.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LifecyclePolicyArgs({
    String? defaultPolicy,
    required String description,
    required String executionRoleArn,
    required LifecyclePolicyPolicyDetails policyDetails,
    String? region,
    String? state,
    Map<String, String>? tags,
  }) :
      defaultPolicy = pulumi.Input.asOptionalInput<String>(defaultPolicy),
      description = pulumi.Input.asInput<String>(description),
      executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
      policyDetails = pulumi.Input.asInput<LifecyclePolicyPolicyDetails>(policyDetails),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPolicy': ?defaultPolicy,
      'description': description,
      'executionRoleArn': executionRoleArn,
      'policyDetails': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetails, Map<String, dynamic>>(policyDetails, (value) => value.toMap()),
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory LifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs(
      defaultPolicy: map['defaultPolicy'] == null ? null : map['defaultPolicy'] as String,
      description: map['description'] as String,
      executionRoleArn: map['executionRoleArn'] as String,
      policyDetails: LifecyclePolicyPolicyDetails.fromMap((map['policyDetails'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

