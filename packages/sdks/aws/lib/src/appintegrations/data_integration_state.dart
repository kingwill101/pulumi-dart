// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_integration_schedule_config.dart';

/// Input properties used for looking up and filtering DataIntegration resources.
class DataIntegrationState {
  /// The Amazon Resource Name (ARN) of the Data Integration.
  final pulumi.Input<String>? arn;

  /// Specifies the description of the Data Integration.
  final pulumi.Input<String>? description;

  /// Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  final pulumi.Input<String>? kmsKey;

  /// Specifies the name of the Data Integration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  final pulumi.Input<DataIntegrationScheduleConfig>? scheduleConfig;

  /// Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  final pulumi.Input<String>? sourceUri;

  /// Tags to apply to the Data Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DataIntegrationState].
  /// [arn] The Amazon Resource Name (ARN) of the Data Integration.
  /// [description] Specifies the description of the Data Integration.
  /// [kmsKey] Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  /// [name] Specifies the name of the Data Integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleConfig] A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  /// [sourceUri] Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  /// [tags] Tags to apply to the Data Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DataIntegrationState({
    this.arn,
    this.description,
    this.kmsKey,
    this.name,
    this.region,
    this.scheduleConfig,
    this.sourceUri,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'kmsKey': ?kmsKey,
      'name': ?name,
      'region': ?region,
      'scheduleConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DataIntegrationScheduleConfig,
            Map<String, dynamic>
          >(scheduleConfig, (value) => value.toMap()),
      'sourceUri': ?sourceUri,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DataIntegrationState.fromMap(Map<String, dynamic> map) {
    return DataIntegrationState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduleConfig: (() {
        final guardedValue = map['scheduleConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataIntegrationScheduleConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceUri: (() {
        final guardedValue = map['sourceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
