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
    this.accessType,
    this.arn,
    this.region,
    this.resourceShareArn,
    this.resourceShareName,
    this.roleArn,
    this.s3BucketArn,
    this.sources,
    this.subscriberDescription,
    this.subscriberEndpoint,
    this.subscriberIdentity,
    this.subscriberName,
    this.subscriberStatus,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      accessType: map['accessType'] == null ? null : ((map['accessType'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceShareArn: map['resourceShareArn'] == null ? null : ((map['resourceShareArn'] as String).input()).input(),
      resourceShareName: map['resourceShareName'] == null ? null : ((map['resourceShareName'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      s3BucketArn: map['s3BucketArn'] == null ? null : ((map['s3BucketArn'] as String).input()).input(),
      sources: map['sources'] == null ? null : ((pulumi.Input.decodeList<SubscriberSource>(map['sources']!, (value) => SubscriberSource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      subscriberDescription: map['subscriberDescription'] == null ? null : ((map['subscriberDescription'] as String).input()).input(),
      subscriberEndpoint: map['subscriberEndpoint'] == null ? null : ((map['subscriberEndpoint'] as String).input()).input(),
      subscriberIdentity: map['subscriberIdentity'] == null ? null : ((SubscriberSubscriberIdentity.fromMap((map['subscriberIdentity']! as Map).cast<String, dynamic>())).input()).input(),
      subscriberName: map['subscriberName'] == null ? null : ((map['subscriberName'] as String).input()).input(),
      subscriberStatus: map['subscriberStatus'] == null ? null : ((map['subscriberStatus'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((SubscriberTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

