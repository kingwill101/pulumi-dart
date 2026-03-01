// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_export_configuration_args_doc}
/// Arguments for getExportConfiguration.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_export_configuration_args_doc}
class GetExportConfigurationArgs {
  /// The Continuous Export configuration ID. This is unique within a Application Insights component.
  final pulumi.Input<String> exportId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetExportConfigurationArgs].
  /// [exportId] The Continuous Export configuration ID. This is unique within a Application Insights component.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  GetExportConfigurationArgs({
    required String exportId,
    required String resourceGroupName,
    required String resourceName,
  }) :
      exportId = pulumi.Input.asInput<String>(exportId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportId': exportId,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetExportConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetExportConfigurationArgs(
      exportId: map['exportId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

