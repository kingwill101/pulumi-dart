// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_s3_storage_config.dart';

/// Input properties used for looking up and filtering Hub resources.
class HubState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Hub.
  final pulumi.Input<String>? arn;
  /// A description of the hub.
  final pulumi.Input<String>? hubDescription;
  /// The display name of the hub.
  final pulumi.Input<String>? hubDisplayName;
  /// The name of the hub.
  final pulumi.Input<String>? hubName;
  /// The searchable keywords for the hub.
  final pulumi.Input<List<String>>? hubSearchKeywords;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  final pulumi.Input<HubS3StorageConfig>? s3StorageConfig;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [HubState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Hub.
  /// [hubDescription] A description of the hub.
  /// [hubDisplayName] The display name of the hub.
  /// [hubName] The name of the hub.
  /// [hubSearchKeywords] The searchable keywords for the hub.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3StorageConfig] The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  HubState({
    this.arn,
    this.hubDescription,
    this.hubDisplayName,
    this.hubName,
    this.hubSearchKeywords,
    this.region,
    this.s3StorageConfig,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hubDescription': ?hubDescription,
      'hubDisplayName': ?hubDisplayName,
      'hubName': ?hubName,
      'hubSearchKeywords': ?hubSearchKeywords,
      'region': ?region,
      's3StorageConfig': ?pulumi.Input.mapOptionalInputValue<HubS3StorageConfig, Map<String, dynamic>>(s3StorageConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory HubState.fromMap(Map<String, dynamic> map) {
    return HubState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      hubDescription: map['hubDescription'] == null ? null : ((map['hubDescription'] as String).input()).input(),
      hubDisplayName: map['hubDisplayName'] == null ? null : ((map['hubDisplayName'] as String).input()).input(),
      hubName: map['hubName'] == null ? null : ((map['hubName'] as String).input()).input(),
      hubSearchKeywords: map['hubSearchKeywords'] == null ? null : (((map['hubSearchKeywords'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3StorageConfig: map['s3StorageConfig'] == null ? null : ((HubS3StorageConfig.fromMap((map['s3StorageConfig']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

