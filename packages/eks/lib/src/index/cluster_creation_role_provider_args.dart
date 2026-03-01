// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cluster_creation_role_provider_args_doc}
/// The set of arguments for ClusterCreationRoleProvider.
/// {@endtemplate}
/// {@macro pulumi_index_cluster_creation_role_provider_args_doc}
class ClusterCreationRoleProviderArgs {
  final pulumi.Input<String>? profile;
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterCreationRoleProviderArgs].
  /// [profile] Optional.
  /// [region] Optional.
  ClusterCreationRoleProviderArgs({
    String? profile,
    String? region,
  }) :
      profile = pulumi.Input.asOptionalInput<String>(profile),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profile': ?profile,
      'region': ?region,
    };
  }

  factory ClusterCreationRoleProviderArgs.fromMap(Map<String, dynamic> map) {
    return ClusterCreationRoleProviderArgs(
      profile: map['profile'] == null ? null : map['profile'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

