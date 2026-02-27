// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AggregateAuthorization.
class AggregateAuthorizationArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;

  /// The region authorized to collect aggregated data.
  final pulumi.Input<String>? authorizedAwsRegion;

  /// The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      authorizedAwsRegion:
          pulumi.Input.asOptionalInput<String>(map['authorizedAwsRegion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
