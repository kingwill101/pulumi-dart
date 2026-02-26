// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../hub_s3_storage_config/hub_s3_storage_config.dart';

/// The set of arguments for Hub.
class HubArgs {
  /// A description of the hub.
  final Input<String> hubDescription;

  /// The display name of the hub.
  final Input<String>? hubDisplayName;

  /// The name of the hub.
  final Input<String> hubName;

  /// The searchable keywords for the hub.
  final Input<List<String>>? hubSearchKeywords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  final Input<HubS3StorageConfig>? s3StorageConfig;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  HubArgs({
    required this.hubDescription,
    this.hubDisplayName,
    required this.hubName,
    this.hubSearchKeywords,
    this.region,
    this.s3StorageConfig,
    this.tags,
  });

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
      map['s3StorageConfig'] =
          Input.mapOptionalInputValue<HubS3StorageConfig, Map<String, dynamic>>(
              s3StorageConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      hubDescription: Input.asInput<String>(map['hubDescription']),
      hubDisplayName: Input.asOptionalInput<String>(map['hubDisplayName']),
      hubName: Input.asInput<String>(map['hubName']),
      hubSearchKeywords:
          Input.asOptionalInput<List<String>>(map['hubSearchKeywords']),
      region: Input.asOptionalInput<String>(map['region']),
      s3StorageConfig:
          Input.asOptionalInput<HubS3StorageConfig>(map['s3StorageConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
