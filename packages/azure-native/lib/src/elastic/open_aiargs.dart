// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_aiintegration_properties.dart';

/// {@template pulumi_elastic_open_aiargs_doc}
/// The set of arguments for OpenAI.
/// {@endtemplate}
/// {@macro pulumi_elastic_open_aiargs_doc}
class OpenAIArgs {
  /// OpenAI Integration name
  final pulumi.Input<String>? integrationName;
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// Open AI Integration details.
  final pulumi.Input<OpenAIIntegrationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [OpenAIArgs].
  /// [integrationName] OpenAI Integration name
  /// [monitorName] Monitor resource name
  /// [properties] Open AI Integration details.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  OpenAIArgs({
    String? integrationName,
    required String monitorName,
    OpenAIIntegrationProperties? properties,
    required String resourceGroupName,
  }) :
      integrationName = pulumi.Input.asOptionalInput<String>(integrationName),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      properties = pulumi.Input.asOptionalInput<OpenAIIntegrationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationName': ?integrationName,
      'monitorName': monitorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<OpenAIIntegrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory OpenAIArgs.fromMap(Map<String, dynamic> map) {
    return OpenAIArgs(
      integrationName: map['integrationName'] == null ? null : map['integrationName'] as String,
      monitorName: map['monitorName'] as String,
      properties: map['properties'] == null ? null : OpenAIIntegrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

