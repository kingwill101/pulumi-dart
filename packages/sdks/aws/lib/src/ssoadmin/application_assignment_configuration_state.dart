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
    pulumi.Output<String>? applicationArn,
    pulumi.Output<bool>? assignmentRequired,
    pulumi.Output<String>? region,
  }) :
      applicationArn = pulumi.Input.asOptionalInput<String>(applicationArn),
      assignmentRequired = pulumi.Input.asOptionalInput<bool>(assignmentRequired),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'assignmentRequired': ?assignmentRequired,
      'region': ?region,
    };
  }

  factory ApplicationAssignmentConfigurationState.fromMap(Map<String, dynamic> map) {
    return ApplicationAssignmentConfigurationState(
      applicationArn: map['applicationArn'] == null ? null : pulumi.Output.create<String>(map['applicationArn'] as String),
      assignmentRequired: map['assignmentRequired'] == null ? null : pulumi.Output.create<bool>(map['assignmentRequired'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

