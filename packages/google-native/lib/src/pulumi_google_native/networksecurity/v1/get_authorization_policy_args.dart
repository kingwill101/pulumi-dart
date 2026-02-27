// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizationPolicy.
class GetAuthorizationPolicyArgs {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAuthorizationPolicyArgs({
    required this.authorizationPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationPolicyId'] = authorizationPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyArgs(
      authorizationPolicyId:
          pulumi.Input.asInput<String>(map['authorizationPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
