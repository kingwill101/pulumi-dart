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
  GetExtensionArgs({
    required String arcSettingName,
    required String clusterName,
    required String extensionName,
    required String resourceGroupName,
  }) :
      arcSettingName = pulumi.Input.asInput<String>(arcSettingName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      extensionName = pulumi.Input.asInput<String>(extensionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      arcSettingName: map['arcSettingName'] as String,
      clusterName: map['clusterName'] as String,
      extensionName: map['extensionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

