// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_policy_attachments_exclusive_timeouts.dart';

/// Input properties used for looking up and filtering ManagedPolicyAttachmentsExclusive resources.
class ManagedPolicyAttachmentsExclusiveState {
  /// ARN of the SSO Instance.
  final pulumi.Input<String>? instanceArn;
  /// Set of ARNs of IAM managed policies to attach to the Permission Set.
  final pulumi.Input<List<String>>? managedPolicyArns;
  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<ManagedPolicyAttachmentsExclusiveTimeouts>? timeouts;

  /// Creates a new [ManagedPolicyAttachmentsExclusiveState].
  /// [instanceArn] ARN of the SSO Instance.
  /// [managedPolicyArns] Set of ARNs of IAM managed policies to attach to the Permission Set.
  /// [permissionSetArn] ARN of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  ManagedPolicyAttachmentsExclusiveState({
    this.instanceArn,
    this.managedPolicyArns,
    this.permissionSetArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': ?instanceArn,
      'managedPolicyArns': ?managedPolicyArns,
      'permissionSetArn': ?permissionSetArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ManagedPolicyAttachmentsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ManagedPolicyAttachmentsExclusiveState.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentsExclusiveState(
      instanceArn: map['instanceArn'] == null ? null : (map['instanceArn'] as String).input(),
      managedPolicyArns: map['managedPolicyArns'] == null ? null : ((map['managedPolicyArns'] as List).cast<String>()).input(),
      permissionSetArn: map['permissionSetArn'] == null ? null : (map['permissionSetArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (ManagedPolicyAttachmentsExclusiveTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

