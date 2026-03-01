// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_authorization_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getAuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_authorization_policy_networksecurity_v1beta1_args_doc}
class GetAuthorizationPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorizationPolicyNetworksecurityV1beta1Args].
  /// [authorizationPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAuthorizationPolicyNetworksecurityV1beta1Args({
    required String authorizationPolicyId,
    required String location,
    String? project,
  }) : authorizationPolicyId = pulumi.Input.asInput<String>(
         authorizationPolicyId,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicyId': authorizationPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAuthorizationPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAuthorizationPolicyNetworksecurityV1beta1Args(
      authorizationPolicyId: map['authorizationPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
