// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnrollmentStatus resources.
class EnrollmentStatusState {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  final pulumi.Input<bool>? includeMemberAccounts;
  /// Status of enrollment. When the resource is present in Terraform, its status will always be `Active`.
  final pulumi.Input<String>? status;

  /// Creates a new [EnrollmentStatusState].
  /// [includeMemberAccounts] Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  /// [status] Status of enrollment. When the resource is present in Terraform, its status will always be `Active`.
  EnrollmentStatusState({
    pulumi.Output<bool>? includeMemberAccounts,
    pulumi.Output<String>? status,
  }) :
      includeMemberAccounts = pulumi.Input.asOptionalInput<bool>(includeMemberAccounts),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeMemberAccounts': ?includeMemberAccounts,
      'status': ?status,
    };
  }

  factory EnrollmentStatusState.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusState(
      includeMemberAccounts: map['includeMemberAccounts'] == null ? null : pulumi.Output.create<bool>(map['includeMemberAccounts'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

