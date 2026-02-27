// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capability_configuration_argo_cd_aws_idc/capability_configuration_argo_cd_aws_idc.dart';
import '../capability_configuration_argo_cd_network_access/capability_configuration_argo_cd_network_access.dart';
import '../capability_configuration_argo_cd_rbac_role_mapping/capability_configuration_argo_cd_rbac_role_mapping.dart';

class CapabilityConfigurationArgoCd {
  /// AWS IAM Identity Center configuration. See `aws_idc` below.
  final CapabilityConfigurationArgoCdAwsIdc awsIdc;

  /// Kubernetes namespace for ArgoCD.
  final String? namespace;

  /// Network access configuration. See `network_access` below.
  final CapabilityConfigurationArgoCdNetworkAccess? networkAccess;

  /// RBAC role mappings. See `rbac_role_mapping` below.
  final List<CapabilityConfigurationArgoCdRbacRoleMapping>? rbacRoleMappings;

  /// URL of the Argo CD server.
  final String? serverUrl;

  CapabilityConfigurationArgoCd({
    required this.awsIdc,
    this.namespace,
    this.networkAccess,
    this.rbacRoleMappings,
    this.serverUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsIdc'] = awsIdc.toMap();
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final networkAccessValue = networkAccess;
    if (networkAccessValue != null) {
      map['networkAccess'] = networkAccessValue.toMap();
    }
    final rbacRoleMappingsValue = rbacRoleMappings;
    if (rbacRoleMappingsValue != null) {
      map['rbacRoleMappings'] = Input.encodeList<
              CapabilityConfigurationArgoCdRbacRoleMapping,
              Map<String, dynamic>>(
          rbacRoleMappingsValue, (value) => value.toMap());
    }
    final serverUrlValue = serverUrl;
    if (serverUrlValue != null) {
      map['serverUrl'] = serverUrlValue;
    }
    return map;
  }

  factory CapabilityConfigurationArgoCd.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCd(
      awsIdc: CapabilityConfigurationArgoCdAwsIdc.fromMap(
          (map['awsIdc'] as Map).cast<String, dynamic>()),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      networkAccess: map['networkAccess'] == null
          ? null
          : CapabilityConfigurationArgoCdNetworkAccess.fromMap(
              (map['networkAccess'] as Map).cast<String, dynamic>()),
      rbacRoleMappings: map['rbacRoleMappings'] == null
          ? null
          : Input.decodeList<CapabilityConfigurationArgoCdRbacRoleMapping>(
              map['rbacRoleMappings'],
              (value) => CapabilityConfigurationArgoCdRbacRoleMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serverUrl: map['serverUrl'] == null ? null : map['serverUrl'] as String,
    );
  }
}
