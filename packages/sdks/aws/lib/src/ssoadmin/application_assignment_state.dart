// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationAssignment resources.
class ApplicationAssignmentState {
  /// ARN of the application.
  final pulumi.Input<String>? applicationArn;
  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final pulumi.Input<String>? principalId;
  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String>? principalType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApplicationAssignmentState].
  /// [applicationArn] ARN of the application.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApplicationAssignmentState({
    this.applicationArn,
    this.principalId,
    this.principalType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'region': ?region,
    };
  }

  factory ApplicationAssignmentState.fromMap(Map<String, dynamic> map) {
    return ApplicationAssignmentState(
      applicationArn: map['applicationArn'] == null ? null : (map['applicationArn'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

