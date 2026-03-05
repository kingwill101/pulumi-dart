// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_get_open_aiargs_doc}
/// Arguments for getOpenAI.
/// {@endtemplate}
/// {@macro pulumi_elastic_get_open_aiargs_doc}
class GetOpenAIArgs {
  /// OpenAI Integration name
  final pulumi.Input<String> integrationName;
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOpenAIArgs].
  /// [integrationName] OpenAI Integration name
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOpenAIArgs({
    required this.integrationName,
    required this.monitorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationName': integrationName,
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOpenAIArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenAIArgs(
      integrationName: pulumi.Input.fromValue(map['integrationName'] as String),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

