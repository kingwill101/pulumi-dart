// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_config_oidc.dart';

/// {@template pulumi_eks_identity_provider_config_identity_provider_config_args_doc}
/// The set of arguments for IdentityProviderConfig.
/// {@endtemplate}
/// {@macro pulumi_eks_identity_provider_config_identity_provider_config_args_doc}
class IdentityProviderConfigArgs {
  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;
  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  final pulumi.Input<IdentityProviderConfigOidc> oidc;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IdentityProviderConfigArgs].
  /// [clusterName] Name of the EKS Cluster.
  /// [oidc] Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  IdentityProviderConfigArgs({
    required String clusterName,
    required IdentityProviderConfigOidc oidc,
    String? region,
    Map<String, String>? tags,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      oidc = pulumi.Input.asInput<IdentityProviderConfigOidc>(oidc),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'oidc': pulumi.Input.mapInputValue<IdentityProviderConfigOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory IdentityProviderConfigArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderConfigArgs(
      clusterName: map['clusterName'] as String,
      oidc: IdentityProviderConfigOidc.fromMap((map['oidc'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

