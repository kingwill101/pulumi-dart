// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automanage_get_configuration_profiles_version_args_doc}
/// Arguments for getConfigurationProfilesVersion.
/// {@endtemplate}
/// {@macro pulumi_automanage_get_configuration_profiles_version_args_doc}
class GetConfigurationProfilesVersionArgs {
  /// The configuration profile name.
  final pulumi.Input<String> configurationProfileName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The configuration profile version name.
  final pulumi.Input<String> versionName;

  /// Creates a new [GetConfigurationProfilesVersionArgs].
  /// [configurationProfileName] The configuration profile name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The configuration profile version name.
  GetConfigurationProfilesVersionArgs({
    required this.configurationProfileName,
    required this.resourceGroupName,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileName': configurationProfileName,
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
    };
  }

  factory GetConfigurationProfilesVersionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConfigurationProfilesVersionArgs(
      configurationProfileName: pulumi.Input.fromValue(
        map['configurationProfileName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
    );
  }
}
