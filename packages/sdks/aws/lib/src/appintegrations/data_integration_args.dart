// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_integration_schedule_config.dart';

/// {@template pulumi_appintegrations_data_integration_data_integration_args_doc}
/// The set of arguments for DataIntegration.
/// {@endtemplate}
/// {@macro pulumi_appintegrations_data_integration_data_integration_args_doc}
class DataIntegrationArgs {
  /// Description of the Data Integration.
  final pulumi.Input<String?>? description;
  /// KMS key ARN for the Data Integration.
  final pulumi.Input<String> kmsKey;
  /// Name of the Data Integration.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block that defines the name of the data and how often it should be pulled from the source. See `scheduleConfig` Block for details.
  final pulumi.Input<DataIntegrationScheduleConfig> scheduleConfig;
  /// URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  final pulumi.Input<String> sourceUri;
  /// Tags to apply to the Data Integration. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DataIntegrationArgs].
  /// [description] Description of the Data Integration.
  /// [kmsKey] KMS key ARN for the Data Integration.
  /// [name] Name of the Data Integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleConfig] Configuration block that defines the name of the data and how often it should be pulled from the source. See `scheduleConfig` Block for details.
  /// [sourceUri] URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  /// [tags] Tags to apply to the Data Integration. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DataIntegrationArgs({
    this.description,
    required this.kmsKey,
    this.name,
    this.region,
    required this.scheduleConfig,
    required this.sourceUri,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kmsKey': kmsKey,
      'name': ?name,
      'region': ?region,
      'scheduleConfig': pulumi.Input.mapInputValue<DataIntegrationScheduleConfig, Map<String, dynamic>>(scheduleConfig, (value) => value.toMap()),
      'sourceUri': sourceUri,
      'tags': ?tags,
    };
  }

  factory DataIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return DataIntegrationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleConfig: pulumi.Input.fromValue(DataIntegrationScheduleConfig.fromMap((map['scheduleConfig']! as Map).cast<String, dynamic>())),
      sourceUri: pulumi.Input.fromValue(map['sourceUri'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
