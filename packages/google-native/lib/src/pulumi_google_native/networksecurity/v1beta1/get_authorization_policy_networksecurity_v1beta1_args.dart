// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizationPolicy.
class GetAuthorizationPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAuthorizationPolicyNetworksecurityV1beta1Args({
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

  factory GetAuthorizationPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorizationPolicyNetworksecurityV1beta1Args(
      authorizationPolicyId:
          pulumi.Input.asInput<String>(map['authorizationPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
