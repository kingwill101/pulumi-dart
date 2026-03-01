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
    required pulumi.Output<String> integrationName,
    required pulumi.Output<String> monitorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      integrationName = pulumi.Input.asInput<String>(integrationName),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationName': integrationName,
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOpenAIStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenAIStatusArgs(
      integrationName: pulumi.Output.create<String>(map['integrationName'] as String),
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

