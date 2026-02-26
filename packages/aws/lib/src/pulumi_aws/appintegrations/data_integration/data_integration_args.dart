// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_integration_schedule_config/data_integration_schedule_config.dart';

/// The set of arguments for DataIntegration.
class DataIntegrationArgs {
  /// Specifies the description of the Data Integration.
  final Input<String>? description;

  /// Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  final Input<String> kmsKey;

  /// Specifies the name of the Data Integration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  final Input<DataIntegrationScheduleConfig> scheduleConfig;

  /// Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where <span pulumi-lang-nodejs="`example`" pulumi-lang-dotnet="`Example`" pulumi-lang-go="`example`" pulumi-lang-python="`example`" pulumi-lang-yaml="`example`" pulumi-lang-java="`example`">`example`</span> is the name of the AppFlow Connector Profile.
  final Input<String> sourceUri;

  /// Tags to apply to the Data Integration. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DataIntegrationArgs({
    this.description,
    required this.kmsKey,
    this.name,
    this.region,
    required this.scheduleConfig,
    required this.sourceUri,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['kmsKey'] = kmsKey;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scheduleConfig'] = Input.mapInputValue<DataIntegrationScheduleConfig,
        Map<String, dynamic>>(scheduleConfig, (value) => value.toMap());
    map['sourceUri'] = sourceUri;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DataIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return DataIntegrationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      kmsKey: Input.asInput<String>(map['kmsKey']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      scheduleConfig:
          Input.asInput<DataIntegrationScheduleConfig>(map['scheduleConfig']),
      sourceUri: Input.asInput<String>(map['sourceUri']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
