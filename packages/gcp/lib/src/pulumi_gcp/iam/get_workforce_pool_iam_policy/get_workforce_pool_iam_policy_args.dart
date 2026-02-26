// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkforcePoolIamPolicy.
class GetWorkforcePoolIamPolicyArgs {
  /// The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> workforcePoolId;

  GetWorkforcePoolIamPolicyArgs({
    this.location,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory GetWorkforcePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolIamPolicyArgs(
      location: Input.asOptionalInput<String>(map['location']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
