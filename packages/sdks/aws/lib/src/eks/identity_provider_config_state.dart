// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_config_oidc.dart';

/// Input properties used for looking up and filtering IdentityProviderConfig resources.
class IdentityProviderConfigState {
  /// Amazon Resource Name (ARN) of the EKS Identity Provider Configuration.
  final pulumi.Input<String>? arn;
  /// Name of the EKS Cluster.
  final pulumi.Input<String>? clusterName;
  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  final pulumi.Input<IdentityProviderConfigOidc>? oidc;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the EKS Identity Provider Configuration.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IdentityProviderConfigState].
  /// [arn] Amazon Resource Name (ARN) of the EKS Identity Provider Configuration.
  /// [clusterName] Name of the EKS Cluster.
  /// [oidc] Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the EKS Identity Provider Configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IdentityProviderConfigState({
    this.arn,
    this.clusterName,
    this.oidc,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterName': ?clusterName,
      'oidc': ?pulumi.Input.mapOptionalInputValue<IdentityProviderConfigOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IdentityProviderConfigState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderConfigState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      clusterName: map['clusterName'] == null ? null : ((map['clusterName'] as String).input()).input(),
      oidc: map['oidc'] == null ? null : ((IdentityProviderConfigOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

