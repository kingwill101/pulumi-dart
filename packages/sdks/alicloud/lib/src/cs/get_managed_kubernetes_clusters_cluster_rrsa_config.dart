// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedKubernetesClustersClusterRrsaConfig {
  /// Whether the RRSA feature has been enabled.
  final pulumi.Input<bool> enabled;
  /// The arn of OIDC provider that was registered in RAM.
  final pulumi.Input<String> ramOidcProviderArn;
  /// The name of OIDC Provider that was registered in RAM.
  final pulumi.Input<String> ramOidcProviderName;
  /// The issuer URL of RRSA OIDC Token.
  final pulumi.Input<String> rrsaOidcIssuerUrl;

  /// Creates a new [GetManagedKubernetesClustersClusterRrsaConfig].
  /// [enabled] Whether the RRSA feature has been enabled.
  /// [ramOidcProviderArn] The arn of OIDC provider that was registered in RAM.
  /// [ramOidcProviderName] The name of OIDC Provider that was registered in RAM.
  /// [rrsaOidcIssuerUrl] The issuer URL of RRSA OIDC Token.
  GetManagedKubernetesClustersClusterRrsaConfig({
    required this.enabled,
    required this.ramOidcProviderArn,
    required this.ramOidcProviderName,
    required this.rrsaOidcIssuerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ramOidcProviderArn': ramOidcProviderArn,
      'ramOidcProviderName': ramOidcProviderName,
      'rrsaOidcIssuerUrl': rrsaOidcIssuerUrl,
    };
  }

  factory GetManagedKubernetesClustersClusterRrsaConfig.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersClusterRrsaConfig(
      enabled: (map['enabled'] as bool).input(),
      ramOidcProviderArn: (map['ramOidcProviderArn'] as String).input(),
      ramOidcProviderName: (map['ramOidcProviderName'] as String).input(),
      rrsaOidcIssuerUrl: (map['rrsaOidcIssuerUrl'] as String).input(),
    );
  }
}

