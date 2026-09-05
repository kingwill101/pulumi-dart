// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverQueryLogConfig resources.
class ResolverQueryLogConfigState {
  /// ARN of the Route 53 Resolver query logging configuration.
  final pulumi.Input<String?>? arn;
  /// The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.
  final pulumi.Input<String?>? destinationArn;
  /// The name of the Route 53 Resolver query logging configuration.
  final pulumi.Input<String?>? name;
  /// The AWS account ID of the account that created the query logging configuration.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account.
  /// Sharing is configured through AWS Resource Access Manager (AWS RAM).
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  final pulumi.Input<String?>? shareStatus;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ResolverQueryLogConfigState].
  /// [arn] ARN of the Route 53 Resolver query logging configuration.
  /// [destinationArn] The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// [name] The name of the Route 53 Resolver query logging configuration.
  /// [ownerId] The AWS account ID of the account that created the query logging configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shareStatus] An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ResolverQueryLogConfigState({
    this.arn,
    this.destinationArn,
    this.name,
    this.ownerId,
    this.region,
    this.shareStatus,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destinationArn': ?destinationArn,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'shareStatus': ?shareStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResolverQueryLogConfigState.fromMap(Map<String, dynamic> map) {
    return ResolverQueryLogConfigState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationArn: (() { final guardedValue = map['destinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareStatus: (() { final guardedValue = map['shareStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
