// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details.dart';

/// Input properties used for looking up and filtering LifecyclePolicy resources.
class LifecyclePolicyState {
  /// ARN of the DLM Lifecycle Policy.
  final pulumi.Input<String?>? arn;
  /// Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  final pulumi.Input<String?>? defaultPolicy;
  /// A description for the DLM lifecycle policy.
  final pulumi.Input<String?>? description;
  /// The ARN of an IAM role that is able to be assumed by the DLM service.
  final pulumi.Input<String?>? executionRoleArn;
  /// See the `policyDetails` configuration block. Max of 1.
  final pulumi.Input<LifecyclePolicyPolicyDetails?>? policyDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  final pulumi.Input<String?>? state;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [LifecyclePolicyState].
  /// [arn] ARN of the DLM Lifecycle Policy.
  /// [defaultPolicy] Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  /// [description] A description for the DLM lifecycle policy.
  /// [executionRoleArn] The ARN of an IAM role that is able to be assumed by the DLM service.
  /// [policyDetails] See the `policyDetails` configuration block. Max of 1.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const LifecyclePolicyState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPolicy: (() { final guardedValue = map['defaultPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDetails: (() { final guardedValue = map['policyDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
