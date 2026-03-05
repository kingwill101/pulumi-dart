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
    this.defaultPolicy,
    required this.description,
    required this.executionRoleArn,
    required this.policyDetails,
    this.region,
    this.state,
    this.tags,
  });

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
      defaultPolicy: (() { final guardedValue = map['defaultPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      policyDetails: pulumi.Input.fromValue(LifecyclePolicyPolicyDetails.fromMap((map['policyDetails']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

