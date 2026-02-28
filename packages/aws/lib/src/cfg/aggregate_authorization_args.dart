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
    required String accountId,
    String? authorizedAwsRegion,
    String? region,
    Map<String, String>? tags,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        authorizedAwsRegion =
            pulumi.Input.asOptionalInput<String>(authorizedAwsRegion),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final authorizedAwsRegionValue = authorizedAwsRegion;
    if (authorizedAwsRegionValue != null) {
      map['authorizedAwsRegion'] = authorizedAwsRegionValue;
    }
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

  factory AggregateAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return AggregateAuthorizationArgs(
      accountId: map['accountId'] as String,
      authorizedAwsRegion: map['authorizedAwsRegion'] == null
          ? null
          : map['authorizedAwsRegion'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
