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
    this.integrationName,
    required this.monitorName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationName': ?integrationName,
      'monitorName': monitorName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            OpenAIIntegrationProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory OpenAIArgs.fromMap(Map<String, dynamic> map) {
    return OpenAIArgs(
      integrationName: (() {
        final guardedValue = map['integrationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OpenAIIntegrationProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
