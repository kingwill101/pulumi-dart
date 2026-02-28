// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_application_assignment_configuration_application_assignment_configuration_args_doc}
/// The set of arguments for ApplicationAssignmentConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_application_assignment_configuration_application_assignment_configuration_args_doc}
class ApplicationAssignmentConfigurationArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;
  /// Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  final pulumi.Input<bool> assignmentRequired;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApplicationAssignmentConfigurationArgs].
  /// [applicationArn] ARN of the application.
  /// [assignmentRequired] Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApplicationAssignmentConfigurationArgs({
    required String applicationArn,
    required bool assignmentRequired,
    String? region,
  }) :
      applicationArn = pulumi.Input.asInput<String>(applicationArn),
      assignmentRequired = pulumi.Input.asInput<bool>(assignmentRequired),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'assignmentRequired': assignmentRequired,
      'region': ?region,
    };
  }

  factory ApplicationAssignmentConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAssignmentConfigurationArgs(
      applicationArn: map['applicationArn'] as String,
      assignmentRequired: map['assignmentRequired'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

