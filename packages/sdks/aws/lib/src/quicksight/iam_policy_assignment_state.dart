// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_assignment_identities.dart';

/// Input properties used for looking up and filtering IamPolicyAssignment resources.
class IamPolicyAssignmentState {
  /// Assignment ID.
  final pulumi.Input<String>? assignmentId;
  /// Name of the assignment.
  final pulumi.Input<String>? assignmentName;
  /// Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? assignmentStatus;
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

  /// Creates a new [IamPolicyAssignmentState].
  /// [assignmentId] Assignment ID.
  /// [assignmentName] Name of the assignment.
  /// [assignmentStatus] Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identities] Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  /// [namespace] Namespace that contains the assignment. Defaults to `default`.
  /// [policyArn] ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IamPolicyAssignmentState({
    this.assignmentId,
    this.assignmentName,
    this.assignmentStatus,
    this.awsAccountId,
    this.identities,
    this.namespace,
    this.policyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentId': ?assignmentId,
      'assignmentName': ?assignmentName,
      'assignmentStatus': ?assignmentStatus,
      'awsAccountId': ?awsAccountId,
      'identities': ?pulumi.Input.mapOptionalInputValue<IamPolicyAssignmentIdentities, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'namespace': ?namespace,
      'policyArn': ?policyArn,
      'region': ?region,
    };
  }

  factory IamPolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return IamPolicyAssignmentState(
      assignmentId: map['assignmentId'] == null ? null : (map['assignmentId'] as String).input(),
      assignmentName: map['assignmentName'] == null ? null : (map['assignmentName'] as String).input(),
      assignmentStatus: map['assignmentStatus'] == null ? null : (map['assignmentStatus'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      identities: map['identities'] == null ? null : (IamPolicyAssignmentIdentities.fromMap((map['identities'] as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      policyArn: map['policyArn'] == null ? null : (map['policyArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

