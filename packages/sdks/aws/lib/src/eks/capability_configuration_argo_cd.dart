// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration_argo_cd_aws_idc.dart';
import 'capability_configuration_argo_cd_network_access.dart';
import 'capability_configuration_argo_cd_rbac_role_mapping.dart';

class CapabilityConfigurationArgoCd {
  /// AWS IAM Identity Center configuration. See `aws_idc` below.
  final pulumi.Input<CapabilityConfigurationArgoCdAwsIdc> awsIdc;
  /// Kubernetes namespace for ArgoCD.
  final pulumi.Input<String>? namespace;
  /// Network access configuration. See `network_access` below.
  final pulumi.Input<CapabilityConfigurationArgoCdNetworkAccess>? networkAccess;
  /// RBAC role mappings. See `rbac_role_mapping` below.
  final pulumi.Input<List<CapabilityConfigurationArgoCdRbacRoleMapping>>? rbacRoleMappings;
  /// URL of the Argo CD server.
  final pulumi.Input<String>? serverUrl;

  /// Creates a new [CapabilityConfigurationArgoCd].
  /// [awsIdc] AWS IAM Identity Center configuration. See `aws_idc` below.
  /// [namespace] Kubernetes namespace for ArgoCD.
  /// [networkAccess] Network access configuration. See `network_access` below.
  /// [rbacRoleMappings] RBAC role mappings. See `rbac_role_mapping` below.
  /// [serverUrl] URL of the Argo CD server.
  CapabilityConfigurationArgoCd({
    required this.awsIdc,
    this.namespace,
    this.networkAccess,
    this.rbacRoleMappings,
    this.serverUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIdc': pulumi.Input.mapInputValue<CapabilityConfigurationArgoCdAwsIdc, Map<String, dynamic>>(awsIdc, (value) => value.toMap()),
      'namespace': ?namespace,
      'networkAccess': ?pulumi.Input.mapOptionalInputValue<CapabilityConfigurationArgoCdNetworkAccess, Map<String, dynamic>>(networkAccess, (value) => value.toMap()),
      'rbacRoleMappings': ?pulumi.Input.mapOptionalInputValue<List<CapabilityConfigurationArgoCdRbacRoleMapping>, List<Map<String, dynamic>>>(rbacRoleMappings, (value) => pulumi.Input.encodeList<CapabilityConfigurationArgoCdRbacRoleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverUrl': ?serverUrl,
    };
  }

  factory CapabilityConfigurationArgoCd.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCd(
      awsIdc: (CapabilityConfigurationArgoCdAwsIdc.fromMap((map['awsIdc']! as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : ((map['namespace'] as String).input()).input(),
      networkAccess: map['networkAccess'] == null ? null : ((CapabilityConfigurationArgoCdNetworkAccess.fromMap((map['networkAccess']! as Map).cast<String, dynamic>())).input()).input(),
      rbacRoleMappings: map['rbacRoleMappings'] == null ? null : ((pulumi.Input.decodeList<CapabilityConfigurationArgoCdRbacRoleMapping>(map['rbacRoleMappings']!, (value) => CapabilityConfigurationArgoCdRbacRoleMapping.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      serverUrl: map['serverUrl'] == null ? null : ((map['serverUrl'] as String).input()).input(),
    );
  }
}

