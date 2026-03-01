// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_policy_attachments_exclusive_timeouts.dart';

/// {@template pulumi_ssoadmin_managed_policy_attachments_exclusive_managed_policy_attachments_exclusive_args_doc}
/// The set of arguments for ManagedPolicyAttachmentsExclusive.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_managed_policy_attachments_exclusive_managed_policy_attachments_exclusive_args_doc}
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

  /// Creates a new [ManagedPolicyAttachmentsExclusiveArgs].
  /// [instanceArn] ARN of the SSO Instance.
  /// [managedPolicyArns] Set of ARNs of IAM managed policies to attach to the Permission Set.
  /// [permissionSetArn] ARN of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  ManagedPolicyAttachmentsExclusiveArgs({
    required pulumi.Output<String> instanceArn,
    required pulumi.Output<List<String>> managedPolicyArns,
    required pulumi.Output<String> permissionSetArn,
    pulumi.Output<String>? region,
    pulumi.Output<ManagedPolicyAttachmentsExclusiveTimeouts>? timeouts,
  }) :
      instanceArn = pulumi.Input.asInput<String>(instanceArn),
      managedPolicyArns = pulumi.Input.asInput<List<String>>(managedPolicyArns),
      permissionSetArn = pulumi.Input.asInput<String>(permissionSetArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<ManagedPolicyAttachmentsExclusiveTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': instanceArn,
      'managedPolicyArns': managedPolicyArns,
      'permissionSetArn': permissionSetArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ManagedPolicyAttachmentsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ManagedPolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentsExclusiveArgs(
      instanceArn: pulumi.Output.create<String>(map['instanceArn'] as String),
      managedPolicyArns: pulumi.Output.create<List<String>>((map['managedPolicyArns'] as List).cast<String>()),
      permissionSetArn: pulumi.Output.create<String>(map['permissionSetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ManagedPolicyAttachmentsExclusiveTimeouts>(ManagedPolicyAttachmentsExclusiveTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

