// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_application_assignment_application_assignment_args_doc}
/// The set of arguments for ApplicationAssignment.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_application_assignment_application_assignment_args_doc}
class ApplicationAssignmentArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;
  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final pulumi.Input<String> principalId;
  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String> principalType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApplicationAssignmentArgs].
  /// [applicationArn] ARN of the application.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApplicationAssignmentArgs({
    required String applicationArn,
    required String principalId,
    required String principalType,
    String? region,
  }) :
      applicationArn = pulumi.Input.asInput<String>(applicationArn),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'principalId': principalId,
      'principalType': principalType,
      'region': ?region,
    };
  }

  factory ApplicationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAssignmentArgs(
      applicationArn: map['applicationArn'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

