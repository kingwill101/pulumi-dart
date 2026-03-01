// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_configuration_group_value_args_doc}
/// Arguments for getConfigurationGroupValue.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_configuration_group_value_args_doc}
class GetConfigurationGroupValueArgs {
  /// The name of the configuration group value.
  final pulumi.Input<String> configurationGroupValueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationGroupValueArgs].
  /// [configurationGroupValueName] The name of the configuration group value.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigurationGroupValueArgs({
    required String configurationGroupValueName,
    required String resourceGroupName,
  }) :
      configurationGroupValueName = pulumi.Input.asInput<String>(configurationGroupValueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupValueName': configurationGroupValueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationGroupValueArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationGroupValueArgs(
      configurationGroupValueName: map['configurationGroupValueName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

