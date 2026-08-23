// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_extension_args_doc}
/// Arguments for getExtension.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_extension_args_doc}
class GetExtensionArgs {
  /// The name of the proxy resource holding details of HCI ArcSetting information.
  final pulumi.Input<String> arcSettingName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the machine extension.
  final pulumi.Input<String> extensionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExtensionArgs].
  /// [arcSettingName] The name of the proxy resource holding details of HCI ArcSetting information.
  /// [clusterName] The name of the cluster.
  /// [extensionName] The name of the machine extension.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetExtensionArgs({
    required this.arcSettingName,
    required this.clusterName,
    required this.extensionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcSettingName': arcSettingName,
      'clusterName': clusterName,
      'extensionName': extensionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionArgs(
      arcSettingName: pulumi.Input.fromValue(map['arcSettingName'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
