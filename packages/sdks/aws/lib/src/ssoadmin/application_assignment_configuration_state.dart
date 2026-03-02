// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationAssignmentConfiguration resources.
class ApplicationAssignmentConfigurationState {
  /// ARN of the application.
  final pulumi.Input<String>? applicationArn;
  /// Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  final pulumi.Input<bool>? assignmentRequired;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApplicationAssignmentConfigurationState].
  /// [applicationArn] ARN of the application.
  /// [assignmentRequired] Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApplicationAssignmentConfigurationState({
    this.applicationArn,
    this.assignmentRequired,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'assignmentRequired': ?assignmentRequired,
      'region': ?region,
    };
  }

  factory ApplicationAssignmentConfigurationState.fromMap(Map<String, dynamic> map) {
    return ApplicationAssignmentConfigurationState(
      applicationArn: map['applicationArn'] == null ? null : ((map['applicationArn'] as String).input()).input(),
      assignmentRequired: map['assignmentRequired'] == null ? null : ((map['assignmentRequired'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

