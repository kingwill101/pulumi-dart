// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_source.dart';
import 'subscriber_subscriber_identity.dart';
import 'subscriber_timeouts.dart';

/// Input properties used for looking up and filtering Subscriber resources.
class SubscriberState {
  /// The Amazon S3 or Lake Formation access type.
  final pulumi.Input<String>? accessType;
  /// ARN of the Data Lake.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) which uniquely defines the AWS RAM resource share. Before accepting the RAM resource share invitation, you can view details related to the RAM resource share.
  final pulumi.Input<String>? resourceShareArn;
  /// The name of the resource share.
  final pulumi.Input<String>? resourceShareName;
  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  final pulumi.Input<String>? roleArn;
  /// The ARN for the Amazon Security Lake Amazon S3 bucket.
  final pulumi.Input<String>? s3BucketArn;
  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  final pulumi.Input<List<SubscriberSource>>? sources;
  /// The description for your subscriber account in Security Lake.
  final pulumi.Input<String>? subscriberDescription;
  /// The subscriber endpoint to which exception messages are posted.
  final pulumi.Input<String>? subscriberEndpoint;
  /// The AWS identity used to access your data. See `subscriber_identity` Block below.
  final pulumi.Input<SubscriberSubscriberIdentity>? subscriberIdentity;
  /// The name of your Security Lake subscriber account.
  final pulumi.Input<String>? subscriberName;
  /// The subscriber status of the Amazon Security Lake subscriber account.
  final pulumi.Input<String>? subscriberStatus;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<SubscriberTimeouts>? timeouts;

  /// Creates a new [SubscriberState].
  /// [accessType] The Amazon S3 or Lake Formation access type.
  /// [arn] ARN of the Data Lake.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceShareArn] The Amazon Resource Name (ARN) which uniquely defines the AWS RAM resource share. Before accepting the RAM resource share invitation, you can view details related to the RAM resource share.
  /// [resourceShareName] The name of the resource share.
  /// [roleArn] The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  /// [s3BucketArn] The ARN for the Amazon Security Lake Amazon S3 bucket.
  /// [sources] The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  /// [subscriberDescription] The description for your subscriber account in Security Lake.
  /// [subscriberEndpoint] The subscriber endpoint to which exception messages are posted.
  /// [subscriberIdentity] The AWS identity used to access your data. See `subscriber_identity` Block below.
  /// [subscriberName] The name of your Security Lake subscriber account.
  /// [subscriberStatus] The subscriber status of the Amazon Security Lake subscriber account.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  SubscriberState({
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceShareArn,
    pulumi.Output<String>? resourceShareName,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? s3BucketArn,
    pulumi.Output<List<SubscriberSource>>? sources,
    pulumi.Output<String>? subscriberDescription,
    pulumi.Output<String>? subscriberEndpoint,
    pulumi.Output<SubscriberSubscriberIdentity>? subscriberIdentity,
    pulumi.Output<String>? subscriberName,
    pulumi.Output<String>? subscriberStatus,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<SubscriberTimeouts>? timeouts,
  }) :
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceShareArn = pulumi.Input.asOptionalInput<String>(resourceShareArn),
      resourceShareName = pulumi.Input.asOptionalInput<String>(resourceShareName),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      s3BucketArn = pulumi.Input.asOptionalInput<String>(s3BucketArn),
      sources = pulumi.Input.asOptionalInput<List<SubscriberSource>>(sources),
      subscriberDescription = pulumi.Input.asOptionalInput<String>(subscriberDescription),
      subscriberEndpoint = pulumi.Input.asOptionalInput<String>(subscriberEndpoint),
      subscriberIdentity = pulumi.Input.asOptionalInput<SubscriberSubscriberIdentity>(subscriberIdentity),
      subscriberName = pulumi.Input.asOptionalInput<String>(subscriberName),
      subscriberStatus = pulumi.Input.asOptionalInput<String>(subscriberStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<SubscriberTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'arn': ?arn,
      'region': ?region,
      'resourceShareArn': ?resourceShareArn,
      'resourceShareName': ?resourceShareName,
      'roleArn': ?roleArn,
      's3BucketArn': ?s3BucketArn,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<SubscriberSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<SubscriberSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriberDescription': ?subscriberDescription,
      'subscriberEndpoint': ?subscriberEndpoint,
      'subscriberIdentity': ?pulumi.Input.mapOptionalInputValue<SubscriberSubscriberIdentity, Map<String, dynamic>>(subscriberIdentity, (value) => value.toMap()),
      'subscriberName': ?subscriberName,
      'subscriberStatus': ?subscriberStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SubscriberTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SubscriberState.fromMap(Map<String, dynamic> map) {
    return SubscriberState(
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceShareArn: map['resourceShareArn'] == null ? null : pulumi.Output.create<String>(map['resourceShareArn'] as String),
      resourceShareName: map['resourceShareName'] == null ? null : pulumi.Output.create<String>(map['resourceShareName'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      s3BucketArn: map['s3BucketArn'] == null ? null : pulumi.Output.create<String>(map['s3BucketArn'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<SubscriberSource>>(pulumi.Input.decodeList<SubscriberSource>(map['sources'], (value) => SubscriberSource.fromMap((value as Map).cast<String, dynamic>()))),
      subscriberDescription: map['subscriberDescription'] == null ? null : pulumi.Output.create<String>(map['subscriberDescription'] as String),
      subscriberEndpoint: map['subscriberEndpoint'] == null ? null : pulumi.Output.create<String>(map['subscriberEndpoint'] as String),
      subscriberIdentity: map['subscriberIdentity'] == null ? null : pulumi.Output.create<SubscriberSubscriberIdentity>(SubscriberSubscriberIdentity.fromMap((map['subscriberIdentity'] as Map).cast<String, dynamic>())),
      subscriberName: map['subscriberName'] == null ? null : pulumi.Output.create<String>(map['subscriberName'] as String),
      subscriberStatus: map['subscriberStatus'] == null ? null : pulumi.Output.create<String>(map['subscriberStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SubscriberTimeouts>(SubscriberTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

