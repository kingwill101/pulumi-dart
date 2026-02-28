// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_client_tls_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_client_tls_policy_networksecurity_v1beta1_args_doc}
class GetClientTlsPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientTlsPolicyNetworksecurityV1beta1Args].
  /// [clientTlsPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetClientTlsPolicyNetworksecurityV1beta1Args({
    required String clientTlsPolicyId,
    required String location,
    String? project,
  })  : clientTlsPolicyId = pulumi.Input.asInput<String>(clientTlsPolicyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientTlsPolicyId'] = clientTlsPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClientTlsPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetClientTlsPolicyNetworksecurityV1beta1Args(
      clientTlsPolicyId: map['clientTlsPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
