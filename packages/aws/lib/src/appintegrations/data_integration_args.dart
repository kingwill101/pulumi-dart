// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_integration_schedule_config.dart';

/// {@template pulumi_appintegrations_data_integration_data_integration_args_doc}
/// The set of arguments for DataIntegration.
/// {@endtemplate}
/// {@macro pulumi_appintegrations_data_integration_data_integration_args_doc}
class DataIntegrationArgs {
  /// Specifies the description of the Data Integration.
  final pulumi.Input<String>? description;

  /// Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  final pulumi.Input<String> kmsKey;

  /// Specifies the name of the Data Integration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  final pulumi.Input<DataIntegrationScheduleConfig> scheduleConfig;

  /// Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  final pulumi.Input<String> sourceUri;

  /// Tags to apply to the Data Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataIntegrationArgs].
  /// [description] Specifies the description of the Data Integration.
  /// [kmsKey] Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  /// [name] Specifies the name of the Data Integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleConfig] A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  /// [sourceUri] Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  /// [tags] Tags to apply to the Data Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DataIntegrationArgs({
    String? description,
    required String kmsKey,
    String? name,
    String? region,
    required DataIntegrationScheduleConfig scheduleConfig,
    required String sourceUri,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        kmsKey = pulumi.Input.asInput<String>(kmsKey),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        scheduleConfig =
            pulumi.Input.asInput<DataIntegrationScheduleConfig>(scheduleConfig),
        sourceUri = pulumi.Input.asInput<String>(sourceUri),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
    map['scheduleConfig'] = pulumi.Input.mapInputValue<
        DataIntegrationScheduleConfig,
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
      description:
          map['description'] == null ? null : map['description'] as String,
      kmsKey: map['kmsKey'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scheduleConfig: DataIntegrationScheduleConfig.fromMap(
          (map['scheduleConfig'] as Map).cast<String, dynamic>()),
      sourceUri: map['sourceUri'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
