// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iam_policy_assignment_identities/iam_policy_assignment_identities.dart';

/// The set of arguments for IamPolicyAssignment.
class IamPolicyAssignmentArgs {
  /// Name of the assignment.
  final Input<String> assignmentName;

  /// Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  ///
  /// The following arguments are optional:
  final Input<String> assignmentStatus;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  final Input<IamPolicyAssignmentIdentities>? identities;

  /// Namespace that contains the assignment. Defaults to `default`.
  final Input<String>? namespace;

  /// ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  final Input<String>? policyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
    final map = <String, dynamic>{};
    map['assignmentName'] = assignmentName;
    map['assignmentStatus'] = assignmentStatus;
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final identitiesValue = identities;
    if (identitiesValue != null) {
      map['identities'] = Input.mapOptionalInputValue<
          IamPolicyAssignmentIdentities,
          Map<String, dynamic>>(identitiesValue, (value) => value.toMap());
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final policyArnValue = policyArn;
    if (policyArnValue != null) {
      map['policyArn'] = policyArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IamPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return IamPolicyAssignmentArgs(
      assignmentName: Input.asInput<String>(map['assignmentName']),
      assignmentStatus: Input.asInput<String>(map['assignmentStatus']),
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      identities: Input.asOptionalInput<IamPolicyAssignmentIdentities>(
          map['identities']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      policyArn: Input.asOptionalInput<String>(map['policyArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
