// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_active_directory_config_args_doc}
/// Arguments for getActiveDirectoryConfig.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_active_directory_config_args_doc}
class GetActiveDirectoryConfigArgs {
  /// The name of the ActiveDirectoryConfig
  final pulumi.Input<String> activeDirectoryConfigName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActiveDirectoryConfigArgs].
  /// [activeDirectoryConfigName] The name of the ActiveDirectoryConfig
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetActiveDirectoryConfigArgs({
    required pulumi.Output<String> activeDirectoryConfigName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      activeDirectoryConfigName = pulumi.Input.asInput<String>(activeDirectoryConfigName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigName': activeDirectoryConfigName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActiveDirectoryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetActiveDirectoryConfigArgs(
      activeDirectoryConfigName: pulumi.Output.create<String>(map['activeDirectoryConfigName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

