// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AggregateAuthorization resources.
class AggregateAuthorizationState {
  /// Account ID.
  final pulumi.Input<String>? accountId;

  /// The ARN of the authorization
  final pulumi.Input<String>? arn;

  /// The region authorized to collect aggregated data.
  final pulumi.Input<String>? authorizedAwsRegion;

  /// The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AggregateAuthorizationState].
  /// [accountId] Account ID.
  /// [arn] The ARN of the authorization
  /// [authorizedAwsRegion] The region authorized to collect aggregated data.
  /// [region] The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AggregateAuthorizationState({
    this.accountId,
    this.arn,
    this.authorizedAwsRegion,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'authorizedAwsRegion': ?authorizedAwsRegion,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AggregateAuthorizationState.fromMap(Map<String, dynamic> map) {
    return AggregateAuthorizationState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizedAwsRegion: (() {
        final guardedValue = map['authorizedAwsRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
