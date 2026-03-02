// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details.dart';

/// Input properties used for looking up and filtering LifecyclePolicy resources.
class LifecyclePolicyState {
  /// Amazon Resource Name (ARN) of the DLM Lifecycle Policy.
  final pulumi.Input<String>? arn;
  /// Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  final pulumi.Input<String>? defaultPolicy;
  /// A description for the DLM lifecycle policy.
  final pulumi.Input<String>? description;
  /// The ARN of an IAM role that is able to be assumed by the DLM service.
  final pulumi.Input<String>? executionRoleArn;
  /// See the `policy_details` configuration block. Max of 1.
  final pulumi.Input<LifecyclePolicyPolicyDetails>? policyDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  final pulumi.Input<String>? state;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LifecyclePolicyState].
  /// [arn] Amazon Resource Name (ARN) of the DLM Lifecycle Policy.
  /// [defaultPolicy] Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  /// [description] A description for the DLM lifecycle policy.
  /// [executionRoleArn] The ARN of an IAM role that is able to be assumed by the DLM service.
  /// [policyDetails] See the `policy_details` configuration block. Max of 1.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LifecyclePolicyState({
    this.arn,
    this.defaultPolicy,
    this.description,
    this.executionRoleArn,
    this.policyDetails,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultPolicy': ?defaultPolicy,
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'policyDetails': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetails, Map<String, dynamic>>(policyDetails, (value) => value.toMap()),
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LifecyclePolicyState.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      defaultPolicy: map['defaultPolicy'] == null ? null : (map['defaultPolicy'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : (map['executionRoleArn'] as String).input(),
      policyDetails: map['policyDetails'] == null ? null : (LifecyclePolicyPolicyDetails.fromMap((map['policyDetails'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

