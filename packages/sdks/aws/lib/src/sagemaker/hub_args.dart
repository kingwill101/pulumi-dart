// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_s3_storage_config.dart';

/// {@template pulumi_sagemaker_hub_hub_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_hub_hub_args_doc}
class HubArgs {
  /// A description of the hub.
  final pulumi.Input<String> hubDescription;
  /// The display name of the hub.
  final pulumi.Input<String>? hubDisplayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The searchable keywords for the hub.
  final pulumi.Input<List<String>>? hubSearchKeywords;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  final pulumi.Input<HubS3StorageConfig>? s3StorageConfig;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HubArgs].
  /// [hubDescription] A description of the hub.
  /// [hubDisplayName] The display name of the hub.
  /// [hubName] The name of the hub.
  /// [hubSearchKeywords] The searchable keywords for the hub.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3StorageConfig] The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const HubArgs({
    required this.hubDescription,
    this.hubDisplayName,
    required this.hubName,
    this.hubSearchKeywords,
    this.region,
    this.s3StorageConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubDescription': hubDescription,
      'hubDisplayName': ?hubDisplayName,
      'hubName': hubName,
      'hubSearchKeywords': ?hubSearchKeywords,
      'region': ?region,
      's3StorageConfig': ?pulumi.Input.mapOptionalInputValue<HubS3StorageConfig, Map<String, dynamic>>(s3StorageConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      hubDescription: pulumi.Input.fromValue(map['hubDescription'] as String),
      hubDisplayName: (() { final guardedValue = map['hubDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      hubSearchKeywords: (() { final guardedValue = map['hubSearchKeywords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3StorageConfig: (() { final guardedValue = map['s3StorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubS3StorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

