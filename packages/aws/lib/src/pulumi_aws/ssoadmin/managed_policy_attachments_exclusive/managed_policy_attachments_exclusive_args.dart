// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_policy_attachments_exclusive_timeouts/managed_policy_attachments_exclusive_timeouts.dart';

/// The set of arguments for ManagedPolicyAttachmentsExclusive.
class ManagedPolicyAttachmentsExclusiveArgs {
  /// ARN of the SSO Instance.
  final pulumi.Input<String> instanceArn;

  /// Set of ARNs of IAM managed policies to attach to the Permission Set.
  final pulumi.Input<List<String>> managedPolicyArns;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<ManagedPolicyAttachmentsExclusiveTimeouts>? timeouts;

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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ManagedPolicyAttachmentsExclusiveTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedPolicyAttachmentsExclusiveArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagedPolicyAttachmentsExclusiveArgs(
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      managedPolicyArns:
          pulumi.Input.asInput<List<String>>(map['managedPolicyArns']),
      permissionSetArn: pulumi.Input.asInput<String>(map['permissionSetArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<
          ManagedPolicyAttachmentsExclusiveTimeouts>(map['timeouts']),
    );
  }
}
