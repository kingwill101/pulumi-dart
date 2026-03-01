// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_policy_definition.dart';

/// {@template pulumi_index_oidc_issuer_args_doc}
/// The set of arguments for OidcIssuer.
/// {@endtemplate}
/// {@macro pulumi_index_oidc_issuer_args_doc}
class OidcIssuerArgs {
  /// The maximum duration of the Pulumi access token working after an exchange, specified in seconds.
  final pulumi.Input<int>? maxExpirationSeconds;
  /// Issuer name.
  final pulumi.Input<String> name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// The auth policies for this Oidc Issuer.
  final pulumi.Input<List<AuthPolicyDefinition>>? policies;
  /// The thumbprints of issuer's TLS certificates. By default, Pulumi will store the thumbprint of the certificate used to serve the OpenID configuration. If the provider uses multiple certificates to serve content, it is required to manually configure these.
  final pulumi.Input<List<String>>? thumbprints;
  /// The OIDC issuer URL.
  final pulumi.Input<String> url;

  /// Creates a new [OidcIssuerArgs].
  /// [maxExpirationSeconds] The maximum duration of the Pulumi access token working after an exchange, specified in seconds.
  /// [name] Issuer name.
  /// [organization] Organization name.
  /// [policies] The auth policies for this Oidc Issuer.
  /// [thumbprints] The thumbprints of issuer's TLS certificates. By default, Pulumi will store the thumbprint of the certificate used to serve the OpenID configuration. If the provider uses multiple certificates to serve content, it is required to manually configure these.
  /// [url] The OIDC issuer URL.
  OidcIssuerArgs({
    int? maxExpirationSeconds,
    required String name,
    required String organization,
    List<AuthPolicyDefinition>? policies,
    List<String>? thumbprints,
    required String url,
  }) :
      maxExpirationSeconds = pulumi.Input.asOptionalInput<int>(maxExpirationSeconds),
      name = pulumi.Input.asInput<String>(name),
      organization = pulumi.Input.asInput<String>(organization),
      policies = pulumi.Input.asOptionalInput<List<AuthPolicyDefinition>>(policies),
      thumbprints = pulumi.Input.asOptionalInput<List<String>>(thumbprints),
      url = pulumi.Input.asInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExpirationSeconds': ?maxExpirationSeconds,
      'name': name,
      'organization': organization,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AuthPolicyDefinition>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AuthPolicyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thumbprints': ?thumbprints,
      'url': url,
    };
  }

  factory OidcIssuerArgs.fromMap(Map<String, dynamic> map) {
    return OidcIssuerArgs(
      maxExpirationSeconds: map['maxExpirationSeconds'] == null ? null : map['maxExpirationSeconds'] as int,
      name: map['name'] as String,
      organization: map['organization'] as String,
      policies: map['policies'] == null ? null : pulumi.Input.decodeList<AuthPolicyDefinition>(map['policies'], (value) => AuthPolicyDefinition.fromMap((value as Map).cast<String, dynamic>())),
      thumbprints: map['thumbprints'] == null ? null : (map['thumbprints'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}

