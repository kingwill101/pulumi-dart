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
  final pulumi.Input<String?>? region;

  /// Creates a new [ApplicationAssignmentArgs].
  /// [applicationArn] ARN of the application.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ApplicationAssignmentArgs({
    required this.applicationArn,
    required this.principalId,
    required this.principalType,
    this.region,
  });

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
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
