// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_get_open_aistatus_args_doc}
/// Arguments for getOpenAIStatus.
/// {@endtemplate}
/// {@macro pulumi_elastic_get_open_aistatus_args_doc}
class GetOpenAIStatusArgs {
  /// OpenAI Integration name
  final pulumi.Input<String> integrationName;

  /// Monitor resource name
  final pulumi.Input<String> monitorName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOpenAIStatusArgs].
  /// [integrationName] OpenAI Integration name
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOpenAIStatusArgs({
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

  factory GetOpenAIStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenAIStatusArgs(
      integrationName: pulumi.Input.fromValue(map['integrationName'] as String),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
