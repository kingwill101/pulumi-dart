// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAuthorizationPolicy.
class GetAuthorizationPolicyArgs2 {
  final Input<String> authorizationPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetAuthorizationPolicyArgs2({
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

  factory GetAuthorizationPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyArgs2(
      authorizationPolicyId:
          Input.asInput<String>(map['authorizationPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
