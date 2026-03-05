// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_get_application_assignments_get_application_assignments_args_doc}
/// Arguments for getApplicationAssignments.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_application_assignments_get_application_assignments_args_doc}
class GetApplicationAssignmentsArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetApplicationAssignmentsArgs].
  /// [applicationArn] ARN of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetApplicationAssignmentsArgs({
    required this.applicationArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'region': ?region,
    };
  }

  factory GetApplicationAssignmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationAssignmentsArgs(
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

