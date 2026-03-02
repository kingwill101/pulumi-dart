// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_connectivity_properties.dart';

/// {@template pulumi_azurestackhci_arc_setting_args_doc}
/// The set of arguments for ArcSetting.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_arc_setting_args_doc}
class ArcSettingArgs {
  /// App id of arc AAD identity.
  final pulumi.Input<String>? arcApplicationClientId;
  /// Object id of arc AAD identity.
  final pulumi.Input<String>? arcApplicationObjectId;
  /// Tenant id of arc AAD identity.
  final pulumi.Input<String>? arcApplicationTenantId;
  /// The resource group that hosts the Arc agents, ie. Hybrid Compute Machine resources.
  final pulumi.Input<String>? arcInstanceResourceGroup;
  /// Object id of arc AAD service principal.
  final pulumi.Input<String>? arcServicePrincipalObjectId;
  /// The name of the proxy resource holding details of HCI ArcSetting information.
  final pulumi.Input<String>? arcSettingName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// contains connectivity related configuration for ARC resources
  final pulumi.Input<List<ArcConnectivityProperties>>? connectivityProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ArcSettingArgs].
  /// [arcApplicationClientId] App id of arc AAD identity.
  /// [arcApplicationObjectId] Object id of arc AAD identity.
  /// [arcApplicationTenantId] Tenant id of arc AAD identity.
  /// [arcInstanceResourceGroup] The resource group that hosts the Arc agents, ie. Hybrid Compute Machine resources.
  /// [arcServicePrincipalObjectId] Object id of arc AAD service principal.
  /// [arcSettingName] The name of the proxy resource holding details of HCI ArcSetting information.
  /// [clusterName] The name of the cluster.
  /// [connectivityProperties] contains connectivity related configuration for ARC resources
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ArcSettingArgs({
    this.arcApplicationClientId,
    this.arcApplicationObjectId,
    this.arcApplicationTenantId,
    this.arcInstanceResourceGroup,
    this.arcServicePrincipalObjectId,
    this.arcSettingName,
    required this.clusterName,
    this.connectivityProperties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcApplicationClientId': ?arcApplicationClientId,
      'arcApplicationObjectId': ?arcApplicationObjectId,
      'arcApplicationTenantId': ?arcApplicationTenantId,
      'arcInstanceResourceGroup': ?arcInstanceResourceGroup,
      'arcServicePrincipalObjectId': ?arcServicePrincipalObjectId,
      'arcSettingName': ?arcSettingName,
      'clusterName': clusterName,
      'connectivityProperties': ?pulumi.Input.mapOptionalInputValue<List<ArcConnectivityProperties>, List<Map<String, dynamic>>>(connectivityProperties, (value) => pulumi.Input.encodeList<ArcConnectivityProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ArcSettingArgs.fromMap(Map<String, dynamic> map) {
    return ArcSettingArgs(
      arcApplicationClientId: map['arcApplicationClientId'] == null ? null : (map['arcApplicationClientId']! as String).input(),
      arcApplicationObjectId: map['arcApplicationObjectId'] == null ? null : (map['arcApplicationObjectId']! as String).input(),
      arcApplicationTenantId: map['arcApplicationTenantId'] == null ? null : (map['arcApplicationTenantId']! as String).input(),
      arcInstanceResourceGroup: map['arcInstanceResourceGroup'] == null ? null : (map['arcInstanceResourceGroup']! as String).input(),
      arcServicePrincipalObjectId: map['arcServicePrincipalObjectId'] == null ? null : (map['arcServicePrincipalObjectId']! as String).input(),
      arcSettingName: map['arcSettingName'] == null ? null : (map['arcSettingName']! as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      connectivityProperties: map['connectivityProperties'] == null ? null : (pulumi.Input.decodeList<ArcConnectivityProperties>(map['connectivityProperties']!, (value) => ArcConnectivityProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

