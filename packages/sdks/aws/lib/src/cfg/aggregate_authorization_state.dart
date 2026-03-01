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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authorizedAwsRegion,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authorizedAwsRegion = pulumi.Input.asOptionalInput<String>(authorizedAwsRegion),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authorizedAwsRegion: map['authorizedAwsRegion'] == null ? null : pulumi.Output.create<String>(map['authorizedAwsRegion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

