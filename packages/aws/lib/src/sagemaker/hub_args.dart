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
  HubArgs({
    required String hubDescription,
    String? hubDisplayName,
    required String hubName,
    List<String>? hubSearchKeywords,
    String? region,
    HubS3StorageConfig? s3StorageConfig,
    Map<String, String>? tags,
  })  : hubDescription = pulumi.Input.asInput<String>(hubDescription),
        hubDisplayName = pulumi.Input.asOptionalInput<String>(hubDisplayName),
        hubName = pulumi.Input.asInput<String>(hubName),
        hubSearchKeywords =
            pulumi.Input.asOptionalInput<List<String>>(hubSearchKeywords),
        region = pulumi.Input.asOptionalInput<String>(region),
        s3StorageConfig =
            pulumi.Input.asOptionalInput<HubS3StorageConfig>(s3StorageConfig),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hubDescription'] = hubDescription;
    final hubDisplayNameValue = hubDisplayName;
    if (hubDisplayNameValue != null) {
      map['hubDisplayName'] = hubDisplayNameValue;
    }
    map['hubName'] = hubName;
    final hubSearchKeywordsValue = hubSearchKeywords;
    if (hubSearchKeywordsValue != null) {
      map['hubSearchKeywords'] = hubSearchKeywordsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3StorageConfigValue = s3StorageConfig;
    if (s3StorageConfigValue != null) {
      map['s3StorageConfig'] = pulumi.Input.mapOptionalInputValue<
          HubS3StorageConfig,
          Map<String, dynamic>>(s3StorageConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      hubDescription: map['hubDescription'] as String,
      hubDisplayName: map['hubDisplayName'] == null
          ? null
          : map['hubDisplayName'] as String,
      hubName: map['hubName'] as String,
      hubSearchKeywords: map['hubSearchKeywords'] == null
          ? null
          : (map['hubSearchKeywords'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      s3StorageConfig: map['s3StorageConfig'] == null
          ? null
          : HubS3StorageConfig.fromMap(
              (map['s3StorageConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
