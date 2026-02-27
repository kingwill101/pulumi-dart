// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ApplicationAssignmentConfiguration.
class ApplicationAssignmentConfigurationArgs {
  /// ARN of the application.
  final Input<String> applicationArn;

  /// Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  final Input<bool> assignmentRequired;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ApplicationAssignmentConfigurationArgs({
    required this.applicationArn,
    required this.assignmentRequired,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    map['assignmentRequired'] = assignmentRequired;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ApplicationAssignmentConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return ApplicationAssignmentConfigurationArgs(
      applicationArn: Input.asInput<String>(map['applicationArn']),
      assignmentRequired: Input.asInput<bool>(map['assignmentRequired']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
