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
  const ArcSettingArgs({
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
      arcApplicationClientId: (() { final guardedValue = map['arcApplicationClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcApplicationObjectId: (() { final guardedValue = map['arcApplicationObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcApplicationTenantId: (() { final guardedValue = map['arcApplicationTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcInstanceResourceGroup: (() { final guardedValue = map['arcInstanceResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcServicePrincipalObjectId: (() { final guardedValue = map['arcServicePrincipalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcSettingName: (() { final guardedValue = map['arcSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      connectivityProperties: (() { final guardedValue = map['connectivityProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArcConnectivityProperties>(guardedValue, (value) => ArcConnectivityProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
