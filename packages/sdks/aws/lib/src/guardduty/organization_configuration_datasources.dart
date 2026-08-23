// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_datasources_kubernetes.dart';
import 'organization_configuration_datasources_malware_protection.dart';
import 'organization_configuration_datasources_s3_logs.dart';

class OrganizationConfigurationDatasources {
  /// Enable Kubernetes Audit Logs Monitoring automatically for new member accounts.
  final pulumi.Input<OrganizationConfigurationDatasourcesKubernetes>? kubernetes;
  /// Enable Malware Protection automatically for new member accounts.
  final pulumi.Input<OrganizationConfigurationDatasourcesMalwareProtection>? malwareProtection;
  /// Enable S3 Protection automatically for new member accounts.
  final pulumi.Input<OrganizationConfigurationDatasourcesS3Logs>? s3Logs;

  /// Creates a new [OrganizationConfigurationDatasources].
  /// [kubernetes] Enable Kubernetes Audit Logs Monitoring automatically for new member accounts.
  /// [malwareProtection] Enable Malware Protection automatically for new member accounts.
  /// [s3Logs] Enable S3 Protection automatically for new member accounts.
  const OrganizationConfigurationDatasources({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationDatasourcesKubernetes, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
      'malwareProtection': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationDatasourcesMalwareProtection, Map<String, dynamic>>(malwareProtection, (value) => value.toMap()),
      's3Logs': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationDatasourcesS3Logs, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory OrganizationConfigurationDatasources.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationDatasources(
      kubernetes: (() { final guardedValue = map['kubernetes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationConfigurationDatasourcesKubernetes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      malwareProtection: (() { final guardedValue = map['malwareProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationConfigurationDatasourcesMalwareProtection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Logs: (() { final guardedValue = map['s3Logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationConfigurationDatasourcesS3Logs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
