// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../identity_provider_config_oidc/identity_provider_config_oidc.dart';

/// The set of arguments for IdentityProviderConfig.
class IdentityProviderConfigArgs {
  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;

  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  final pulumi.Input<IdentityProviderConfigOidc> oidc;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  IdentityProviderConfigArgs({
    required this.clusterName,
    required this.oidc,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['oidc'] = pulumi.Input.mapInputValue<IdentityProviderConfigOidc,
        Map<String, dynamic>>(oidc, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IdentityProviderConfigArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderConfigArgs(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      oidc: pulumi.Input.asInput<IdentityProviderConfigOidc>(map['oidc']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
