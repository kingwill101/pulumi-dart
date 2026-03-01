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
    pulumi.Output<String>? assignmentId,
    pulumi.Output<String>? assignmentName,
    pulumi.Output<String>? assignmentStatus,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<IamPolicyAssignmentIdentities>? identities,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? policyArn,
    pulumi.Output<String>? region,
  }) :
      assignmentId = pulumi.Input.asOptionalInput<String>(assignmentId),
      assignmentName = pulumi.Input.asOptionalInput<String>(assignmentName),
      assignmentStatus = pulumi.Input.asOptionalInput<String>(assignmentStatus),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      identities = pulumi.Input.asOptionalInput<IamPolicyAssignmentIdentities>(identities),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      policyArn = pulumi.Input.asOptionalInput<String>(policyArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      assignmentId: map['assignmentId'] == null ? null : pulumi.Output.create<String>(map['assignmentId'] as String),
      assignmentName: map['assignmentName'] == null ? null : pulumi.Output.create<String>(map['assignmentName'] as String),
      assignmentStatus: map['assignmentStatus'] == null ? null : pulumi.Output.create<String>(map['assignmentStatus'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      identities: map['identities'] == null ? null : pulumi.Output.create<IamPolicyAssignmentIdentities>(IamPolicyAssignmentIdentities.fromMap((map['identities'] as Map).cast<String, dynamic>())),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      policyArn: map['policyArn'] == null ? null : pulumi.Output.create<String>(map['policyArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

