// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_get_identity_aware_proxy_client_args_doc}
/// Arguments for getIdentityAwareProxyClient.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_get_identity_aware_proxy_client_args_doc}
class GetIdentityAwareProxyClientArgs {
  final pulumi.Input<String> brandId;
  final pulumi.Input<String> identityAwareProxyClientId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIdentityAwareProxyClientArgs].
  /// [brandId] Required.
  /// [identityAwareProxyClientId] Required.
  /// [project] Optional.
  GetIdentityAwareProxyClientArgs({
    required String brandId,
    required String identityAwareProxyClientId,
    String? project,
  }) : brandId = pulumi.Input.asInput<String>(brandId),
       identityAwareProxyClientId = pulumi.Input.asInput<String>(
         identityAwareProxyClientId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brandId': brandId,
      'identityAwareProxyClientId': identityAwareProxyClientId,
      'project': ?project,
    };
  }

  factory GetIdentityAwareProxyClientArgs.fromMap(Map<String, dynamic> map) {
    return GetIdentityAwareProxyClientArgs(
      brandId: map['brandId'] as String,
      identityAwareProxyClientId: map['identityAwareProxyClientId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
