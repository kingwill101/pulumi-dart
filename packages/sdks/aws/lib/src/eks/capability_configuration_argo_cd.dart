// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration_argo_cd_aws_idc.dart';
import 'capability_configuration_argo_cd_network_access.dart';
import 'capability_configuration_argo_cd_rbac_role_mapping.dart';

class CapabilityConfigurationArgoCd {
  /// AWS IAM Identity Center configuration. See `awsIdc` below.
  final pulumi.Input<CapabilityConfigurationArgoCdAwsIdc> awsIdc;
  /// Kubernetes namespace for ArgoCD.
  final pulumi.Input<String>? namespace;
  /// Network access configuration. See `networkAccess` below.
  final pulumi.Input<CapabilityConfigurationArgoCdNetworkAccess>? networkAccess;
  /// RBAC role mappings. See `rbacRoleMapping` below.
  final pulumi.Input<List<CapabilityConfigurationArgoCdRbacRoleMapping>>? rbacRoleMappings;
  /// URL of the Argo CD server.
  final pulumi.Input<String>? serverUrl;

  /// Creates a new [CapabilityConfigurationArgoCd].
  /// [awsIdc] AWS IAM Identity Center configuration. See `awsIdc` below.
  /// [namespace] Kubernetes namespace for ArgoCD.
  /// [networkAccess] Network access configuration. See `networkAccess` below.
  /// [rbacRoleMappings] RBAC role mappings. See `rbacRoleMapping` below.
  /// [serverUrl] URL of the Argo CD server.
  const CapabilityConfigurationArgoCd({
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
      awsIdc: pulumi.Input.fromValue(CapabilityConfigurationArgoCdAwsIdc.fromMap((map['awsIdc']! as Map).cast<String, dynamic>())),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAccess: (() { final guardedValue = map['networkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapabilityConfigurationArgoCdNetworkAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rbacRoleMappings: (() { final guardedValue = map['rbacRoleMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CapabilityConfigurationArgoCdRbacRoleMapping>(guardedValue, (value) => CapabilityConfigurationArgoCdRbacRoleMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serverUrl: (() { final guardedValue = map['serverUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
