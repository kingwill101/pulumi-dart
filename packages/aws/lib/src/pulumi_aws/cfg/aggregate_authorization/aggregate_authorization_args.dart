// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AggregateAuthorization.
class AggregateAuthorizationArgs {
  /// Account ID.
  final Input<String> accountId;

  /// The region authorized to collect aggregated data.
  final Input<String>? authorizedAwsRegion;

  /// The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AggregateAuthorizationArgs({
    required this.accountId,
    this.authorizedAwsRegion,
    this.region,
    this.tags,
  });

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
      accountId: Input.asInput<String>(map['accountId']),
      authorizedAwsRegion:
          Input.asOptionalInput<String>(map['authorizedAwsRegion']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
