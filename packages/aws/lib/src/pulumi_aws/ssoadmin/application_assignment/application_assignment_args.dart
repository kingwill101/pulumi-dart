// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApplicationAssignment.
class ApplicationAssignmentArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final pulumi.Input<String> principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ApplicationAssignmentArgs({
    required this.applicationArn,
    required this.principalId,
    required this.principalType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    map['principalId'] = principalId;
    map['principalType'] = principalType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ApplicationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAssignmentArgs(
      applicationArn: pulumi.Input.asInput<String>(map['applicationArn']),
      principalId: pulumi.Input.asInput<String>(map['principalId']),
      principalType: pulumi.Input.asInput<String>(map['principalType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
