// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_configuration_properties.dart';

/// {@template pulumi_logic_integration_account_batch_configuration_args_doc}
/// The set of arguments for IntegrationAccountBatchConfiguration.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_batch_configuration_args_doc}
class IntegrationAccountBatchConfigurationArgs {
  /// The batch configuration name.
  final pulumi.Input<String>? batchConfigurationName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The batch configuration properties.
  final pulumi.Input<BatchConfigurationProperties> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountBatchConfigurationArgs].
  /// [batchConfigurationName] The batch configuration name.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [properties] The batch configuration properties.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  IntegrationAccountBatchConfigurationArgs({
    pulumi.Output<String>? batchConfigurationName,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? location,
    required pulumi.Output<BatchConfigurationProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      batchConfigurationName = pulumi.Input.asOptionalInput<String>(batchConfigurationName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<BatchConfigurationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchConfigurationName': ?batchConfigurationName,
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<BatchConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountBatchConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationArgs(
      batchConfigurationName: map['batchConfigurationName'] == null ? null : pulumi.Output.create<String>(map['batchConfigurationName'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<BatchConfigurationProperties>(BatchConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

