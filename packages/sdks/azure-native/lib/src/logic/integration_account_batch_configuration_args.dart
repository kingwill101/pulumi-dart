// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_configuration_properties.dart';

/// {@template pulumi_logic_integration_account_batch_configuration_args_doc}
/// The set of arguments for IntegrationAccountBatchConfiguration.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_batch_configuration_args_doc}
class IntegrationAccountBatchConfigurationArgs {
  /// The batch configuration name.
  final pulumi.Input<String?>? batchConfigurationName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String?>? location;
  /// The batch configuration properties.
  final pulumi.Input<BatchConfigurationProperties> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [IntegrationAccountBatchConfigurationArgs].
  /// [batchConfigurationName] The batch configuration name.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [properties] The batch configuration properties.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  const IntegrationAccountBatchConfigurationArgs({
    this.batchConfigurationName,
    required this.integrationAccountName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      batchConfigurationName: (() { final guardedValue = map['batchConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(BatchConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
