// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverQueryLogConfig resources.
class ResolverQueryLogConfigState {
  /// The ARN (Amazon Resource Name) of the Route 53 Resolver query logging configuration.
  final pulumi.Input<String>? arn;
  /// The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.
  final pulumi.Input<String>? destinationArn;
  /// The name of the Route 53 Resolver query logging configuration.
  final pulumi.Input<String>? name;
  /// The AWS account ID of the account that created the query logging configuration.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account.
  /// Sharing is configured through AWS Resource Access Manager (AWS RAM).
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  final pulumi.Input<String>? shareStatus;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResolverQueryLogConfigState].
  /// [arn] The ARN (Amazon Resource Name) of the Route 53 Resolver query logging configuration.
  /// [destinationArn] The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// [name] The name of the Route 53 Resolver query logging configuration.
  /// [ownerId] The AWS account ID of the account that created the query logging configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shareStatus] An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ResolverQueryLogConfigState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? destinationArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareStatus,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destinationArn = pulumi.Input.asOptionalInput<String>(destinationArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareStatus = pulumi.Input.asOptionalInput<String>(shareStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destinationArn: map['destinationArn'] == null ? null : pulumi.Output.create<String>(map['destinationArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareStatus: map['shareStatus'] == null ? null : pulumi.Output.create<String>(map['shareStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

