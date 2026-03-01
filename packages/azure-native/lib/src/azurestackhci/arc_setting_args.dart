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
    String? arcApplicationClientId,
    String? arcApplicationObjectId,
    String? arcApplicationTenantId,
    String? arcInstanceResourceGroup,
    String? arcServicePrincipalObjectId,
    String? arcSettingName,
    required String clusterName,
    List<ArcConnectivityProperties>? connectivityProperties,
    required String resourceGroupName,
  }) :
      arcApplicationClientId = pulumi.Input.asOptionalInput<String>(arcApplicationClientId),
      arcApplicationObjectId = pulumi.Input.asOptionalInput<String>(arcApplicationObjectId),
      arcApplicationTenantId = pulumi.Input.asOptionalInput<String>(arcApplicationTenantId),
      arcInstanceResourceGroup = pulumi.Input.asOptionalInput<String>(arcInstanceResourceGroup),
      arcServicePrincipalObjectId = pulumi.Input.asOptionalInput<String>(arcServicePrincipalObjectId),
      arcSettingName = pulumi.Input.asOptionalInput<String>(arcSettingName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      connectivityProperties = pulumi.Input.asOptionalInput<List<ArcConnectivityProperties>>(connectivityProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      arcApplicationClientId: map['arcApplicationClientId'] == null ? null : map['arcApplicationClientId'] as String,
      arcApplicationObjectId: map['arcApplicationObjectId'] == null ? null : map['arcApplicationObjectId'] as String,
      arcApplicationTenantId: map['arcApplicationTenantId'] == null ? null : map['arcApplicationTenantId'] as String,
      arcInstanceResourceGroup: map['arcInstanceResourceGroup'] == null ? null : map['arcInstanceResourceGroup'] as String,
      arcServicePrincipalObjectId: map['arcServicePrincipalObjectId'] == null ? null : map['arcServicePrincipalObjectId'] as String,
      arcSettingName: map['arcSettingName'] == null ? null : map['arcSettingName'] as String,
      clusterName: map['clusterName'] as String,
      connectivityProperties: map['connectivityProperties'] == null ? null : pulumi.Input.decodeList<ArcConnectivityProperties>(map['connectivityProperties'], (value) => ArcConnectivityProperties.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

