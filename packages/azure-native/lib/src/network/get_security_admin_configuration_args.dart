// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_security_admin_configuration_args_doc}
/// Arguments for getSecurityAdminConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_security_admin_configuration_args_doc}
class GetSecurityAdminConfigurationArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSecurityAdminConfigurationArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  GetSecurityAdminConfigurationArgs({
    required String configurationName,
    required String networkManagerName,
    required String resourceGroupName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSecurityAdminConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityAdminConfigurationArgs(
      configurationName: map['configurationName'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

