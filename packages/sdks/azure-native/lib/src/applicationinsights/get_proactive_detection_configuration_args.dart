// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_proactive_detection_configuration_args_doc}
/// Arguments for getProactiveDetectionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_proactive_detection_configuration_args_doc}
class GetProactiveDetectionConfigurationArgs {
  /// The ProactiveDetection configuration ID. This is unique within a Application Insights component.
  final pulumi.Input<String> configurationId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetProactiveDetectionConfigurationArgs].
  /// [configurationId] The ProactiveDetection configuration ID. This is unique within a Application Insights component.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  GetProactiveDetectionConfigurationArgs({
    required this.configurationId,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationId': configurationId,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetProactiveDetectionConfigurationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetProactiveDetectionConfigurationArgs(
      configurationId: pulumi.Input.fromValue(map['configurationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
