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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? hubDescription,
    pulumi.Output<String>? hubDisplayName,
    pulumi.Output<String>? hubName,
    pulumi.Output<List<String>>? hubSearchKeywords,
    pulumi.Output<String>? region,
    pulumi.Output<HubS3StorageConfig>? s3StorageConfig,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      hubDescription = pulumi.Input.asOptionalInput<String>(hubDescription),
      hubDisplayName = pulumi.Input.asOptionalInput<String>(hubDisplayName),
      hubName = pulumi.Input.asOptionalInput<String>(hubName),
      hubSearchKeywords = pulumi.Input.asOptionalInput<List<String>>(hubSearchKeywords),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3StorageConfig = pulumi.Input.asOptionalInput<HubS3StorageConfig>(s3StorageConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      hubDescription: map['hubDescription'] == null ? null : pulumi.Output.create<String>(map['hubDescription'] as String),
      hubDisplayName: map['hubDisplayName'] == null ? null : pulumi.Output.create<String>(map['hubDisplayName'] as String),
      hubName: map['hubName'] == null ? null : pulumi.Output.create<String>(map['hubName'] as String),
      hubSearchKeywords: map['hubSearchKeywords'] == null ? null : pulumi.Output.create<List<String>>((map['hubSearchKeywords'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3StorageConfig: map['s3StorageConfig'] == null ? null : pulumi.Output.create<HubS3StorageConfig>(HubS3StorageConfig.fromMap((map['s3StorageConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

