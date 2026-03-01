// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_configuration_args_doc}
/// Arguments for getConfiguration.
/// {@endtemplate}
/// {@macro pulumi_edge_get_configuration_args_doc}
class GetConfigurationArgs {
  /// Name of the Configuration
  final pulumi.Input<String> configurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationArgs].
  /// [configurationName] Name of the Configuration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigurationArgs({
    required String configurationName,
    required String resourceGroupName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationArgs(
      configurationName: map['configurationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

