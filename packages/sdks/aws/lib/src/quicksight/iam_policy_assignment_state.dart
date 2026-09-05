// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_assignment_identities.dart';

/// Input properties used for looking up and filtering IamPolicyAssignment resources.
class IamPolicyAssignmentState {
  /// Assignment ID.
  final pulumi.Input<String?>? assignmentId;
  /// Name of the assignment.
  final pulumi.Input<String?>? assignmentName;
  /// Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? assignmentStatus;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  final pulumi.Input<IamPolicyAssignmentIdentities?>? identities;
  /// Namespace that contains the assignment. Defaults to `default`.
  final pulumi.Input<String?>? namespace;
  /// ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  final pulumi.Input<String?>? policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [IamPolicyAssignmentState].
  /// [assignmentId] Assignment ID.
  /// [assignmentName] Name of the assignment.
  /// [assignmentStatus] Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identities] Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  /// [namespace] Namespace that contains the assignment. Defaults to `default`.
  /// [policyArn] ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const IamPolicyAssignmentState({
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
      assignmentId: (() { final guardedValue = map['assignmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assignmentName: (() { final guardedValue = map['assignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assignmentStatus: (() { final guardedValue = map['assignmentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IamPolicyAssignmentIdentities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
