// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iam_policy_assignment_identities/iam_policy_assignment_identities.dart';

/// The set of arguments for IamPolicyAssignment.
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
      map['identities'] = pulumi.Input.mapOptionalInputValue<
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
      assignmentName: pulumi.Input.asInput<String>(map['assignmentName']),
      assignmentStatus: pulumi.Input.asInput<String>(map['assignmentStatus']),
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      identities: pulumi.Input.asOptionalInput<IamPolicyAssignmentIdentities>(
          map['identities']),
      namespace: pulumi.Input.asOptionalInput<String>(map['namespace']),
      policyArn: pulumi.Input.asOptionalInput<String>(map['policyArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
