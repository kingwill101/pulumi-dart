// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../managed_policy_attachments_exclusive_timeouts/managed_policy_attachments_exclusive_timeouts.dart';

/// The set of arguments for ManagedPolicyAttachmentsExclusive.
class ManagedPolicyAttachmentsExclusiveArgs {
  /// ARN of the SSO Instance.
  final Input<String> instanceArn;

  /// Set of ARNs of IAM managed policies to attach to the Permission Set.
  final Input<List<String>> managedPolicyArns;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  final Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<ManagedPolicyAttachmentsExclusiveTimeouts>? timeouts;

  ManagedPolicyAttachmentsExclusiveArgs({
    required this.instanceArn,
    required this.managedPolicyArns,
    required this.permissionSetArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    map['managedPolicyArns'] = managedPolicyArns;
    map['permissionSetArn'] = permissionSetArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          ManagedPolicyAttachmentsExclusiveTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedPolicyAttachmentsExclusiveArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagedPolicyAttachmentsExclusiveArgs(
      instanceArn: Input.asInput<String>(map['instanceArn']),
      managedPolicyArns: Input.asInput<List<String>>(map['managedPolicyArns']),
      permissionSetArn: Input.asInput<String>(map['permissionSetArn']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts:
          Input.asOptionalInput<ManagedPolicyAttachmentsExclusiveTimeouts>(
              map['timeouts']),
    );
  }
}
