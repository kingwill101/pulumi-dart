// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_arc_setting_args_doc}
/// Arguments for getArcSetting.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_arc_setting_args_doc}
class GetArcSettingArgs {
  /// The name of the proxy resource holding details of HCI ArcSetting information.
  final pulumi.Input<String> arcSettingName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArcSettingArgs].
  /// [arcSettingName] The name of the proxy resource holding details of HCI ArcSetting information.
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetArcSettingArgs({
    required String arcSettingName,
    required String clusterName,
    required String resourceGroupName,
  }) :
      arcSettingName = pulumi.Input.asInput<String>(arcSettingName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcSettingName': arcSettingName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArcSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetArcSettingArgs(
      arcSettingName: map['arcSettingName'] as String,
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

