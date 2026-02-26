// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApplicationAssignments.
class GetApplicationAssignmentsArgs {
  /// ARN of the application.
  final Input<String> applicationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetApplicationAssignmentsArgs({
    required this.applicationArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetApplicationAssignmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationAssignmentsArgs(
      applicationArn: Input.asInput<String>(map['applicationArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
