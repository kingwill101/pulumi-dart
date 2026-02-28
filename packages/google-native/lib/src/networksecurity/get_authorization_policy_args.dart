// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_authorization_policy_args_doc}
/// Arguments for getAuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_authorization_policy_args_doc}
class GetAuthorizationPolicyArgs {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorizationPolicyArgs].
  /// [authorizationPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAuthorizationPolicyArgs({
    required String authorizationPolicyId,
    required String location,
    String? project,
  })  : authorizationPolicyId =
            pulumi.Input.asInput<String>(authorizationPolicyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      authorizationPolicyId: map['authorizationPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
