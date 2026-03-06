// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automanage_get_configuration_profile_args_doc}
/// Arguments for getConfigurationProfile.
/// {@endtemplate}
/// {@macro pulumi_automanage_get_configuration_profile_args_doc}
class GetConfigurationProfileArgs {
  /// The configuration profile name.
  final pulumi.Input<String> configurationProfileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationProfileArgs].
  /// [configurationProfileName] The configuration profile name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConfigurationProfileArgs({
    required this.configurationProfileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileName': configurationProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileArgs(
      configurationProfileName: pulumi.Input.fromValue(map['configurationProfileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

