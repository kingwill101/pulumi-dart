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
  final pulumi.Input<String?>? authorizedAwsRegion;
  /// The region authorized to collect aggregated data. Use `authorizedAwsRegion` instead.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AggregateAuthorizationArgs].
  /// [accountId] Account ID.
  /// [authorizedAwsRegion] The region authorized to collect aggregated data.
  /// [region] The region authorized to collect aggregated data. Use `authorizedAwsRegion` instead.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AggregateAuthorizationArgs({
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      authorizedAwsRegion: (() { final guardedValue = map['authorizedAwsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
