// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
/// Arguments for getAppServiceEnvironmentAseCustomDnsSuffixConfiguration.
/// {@endtemplate}
/// {@macro pulumi_web_get_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
class GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs {
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs].
  /// [name] Name of the App Service Environment.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

