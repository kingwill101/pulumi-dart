// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_aggregate_authorization_aggregate_authorization_args_doc}
/// The set of arguments for AggregateAuthorization.
/// {@endtemplate}
/// {@macro pulumi_cfg_aggregate_authorization_aggregate_authorization_args_doc}
class AggregateAuthorizationArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// The region authorized to collect aggregated data.
  final pulumi.Input<String>? authorizedAwsRegion;
  /// The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AggregateAuthorizationArgs].
  /// [accountId] Account ID.
  /// [authorizedAwsRegion] The region authorized to collect aggregated data.
  /// [region] The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AggregateAuthorizationArgs({
    required this.accountId,
    this.authorizedAwsRegion,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'authorizedAwsRegion': ?authorizedAwsRegion,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AggregateAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return AggregateAuthorizationArgs(
      accountId: (map['accountId'] as String).input(),
      authorizedAwsRegion: map['authorizedAwsRegion'] == null ? null : ((map['authorizedAwsRegion'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

