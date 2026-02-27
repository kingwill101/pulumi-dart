// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_details/lifecycle_policy_policy_details.dart';

/// The set of arguments for LifecyclePolicy.
class LifecyclePolicyArgs {
  /// Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  final Input<String>? defaultPolicy;

  /// A description for the DLM lifecycle policy.
  final Input<String> description;

  /// The ARN of an IAM role that is able to be assumed by the DLM service.
  final Input<String> executionRoleArn;

  /// See the `policy_details` configuration block. Max of 1.
  final Input<LifecyclePolicyPolicyDetails> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  final Input<String>? state;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final defaultPolicyValue = defaultPolicy;
    if (defaultPolicyValue != null) {
      map['defaultPolicy'] = defaultPolicyValue;
    }
    map['description'] = description;
    map['executionRoleArn'] = executionRoleArn;
    map['policyDetails'] =
        Input.mapInputValue<LifecyclePolicyPolicyDetails, Map<String, dynamic>>(
            policyDetails, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs(
      defaultPolicy: Input.asOptionalInput<String>(map['defaultPolicy']),
      description: Input.asInput<String>(map['description']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      policyDetails:
          Input.asInput<LifecyclePolicyPolicyDetails>(map['policyDetails']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
