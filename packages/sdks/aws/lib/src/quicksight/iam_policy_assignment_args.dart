// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_assignment_identities.dart';

/// {@template pulumi_quicksight_iam_policy_assignment_iam_policy_assignment_args_doc}
/// The set of arguments for IamPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_quicksight_iam_policy_assignment_iam_policy_assignment_args_doc}
class IamPolicyAssignmentArgs {
  /// Name of the assignment.
  final pulumi.Input<String> assignmentName;
  /// Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> assignmentStatus;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  final pulumi.Input<IamPolicyAssignmentIdentities>? identities;
  /// Namespace that contains the assignment. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  final pulumi.Input<String>? policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IamPolicyAssignmentArgs].
  /// [assignmentName] Name of the assignment.
  /// [assignmentStatus] Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identities] Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  /// [namespace] Namespace that contains the assignment. Defaults to `default`.
  /// [policyArn] ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IamPolicyAssignmentArgs({
    required this.assignmentName,
    required this.assignmentStatus,
    this.awsAccountId,
    this.identities,
    this.namespace,
    this.policyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': assignmentName,
      'assignmentStatus': assignmentStatus,
      'awsAccountId': ?awsAccountId,
      'identities': ?pulumi.Input.mapOptionalInputValue<IamPolicyAssignmentIdentities, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'namespace': ?namespace,
      'policyArn': ?policyArn,
      'region': ?region,
    };
  }

  factory IamPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return IamPolicyAssignmentArgs(
      assignmentName: (map['assignmentName'] as String).input(),
      assignmentStatus: (map['assignmentStatus'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      identities: map['identities'] == null ? null : ((IamPolicyAssignmentIdentities.fromMap((map['identities']! as Map).cast<String, dynamic>())).input()).input(),
      namespace: map['namespace'] == null ? null : ((map['namespace'] as String).input()).input(),
      policyArn: map['policyArn'] == null ? null : ((map['policyArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

