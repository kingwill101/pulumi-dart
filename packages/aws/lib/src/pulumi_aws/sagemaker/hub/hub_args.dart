// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../hub_s3_storage_config/hub_s3_storage_config.dart';

/// The set of arguments for Hub.
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
      hubDescription: pulumi.Input.asInput<String>(map['hubDescription']),
      hubDisplayName:
          pulumi.Input.asOptionalInput<String>(map['hubDisplayName']),
      hubName: pulumi.Input.asInput<String>(map['hubName']),
      hubSearchKeywords:
          pulumi.Input.asOptionalInput<List<String>>(map['hubSearchKeywords']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      s3StorageConfig: pulumi.Input.asOptionalInput<HubS3StorageConfig>(
          map['s3StorageConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
