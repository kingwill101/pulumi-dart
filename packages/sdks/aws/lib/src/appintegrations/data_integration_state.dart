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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<DataIntegrationScheduleConfig>? scheduleConfig,
    pulumi.Output<String>? sourceUri,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduleConfig = pulumi.Input.asOptionalInput<DataIntegrationScheduleConfig>(scheduleConfig),
      sourceUri = pulumi.Input.asOptionalInput<String>(sourceUri),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'kmsKey': ?kmsKey,
      'name': ?name,
      'region': ?region,
      'scheduleConfig': ?pulumi.Input.mapOptionalInputValue<DataIntegrationScheduleConfig, Map<String, dynamic>>(scheduleConfig, (value) => value.toMap()),
      'sourceUri': ?sourceUri,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DataIntegrationState.fromMap(Map<String, dynamic> map) {
    return DataIntegrationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduleConfig: map['scheduleConfig'] == null ? null : pulumi.Output.create<DataIntegrationScheduleConfig>(DataIntegrationScheduleConfig.fromMap((map['scheduleConfig'] as Map).cast<String, dynamic>())),
      sourceUri: map['sourceUri'] == null ? null : pulumi.Output.create<String>(map['sourceUri'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

