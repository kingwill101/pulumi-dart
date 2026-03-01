// ignore_for_file: unused_element, unnecessary_cast

import 'organization_configuration_datasources_kubernetes.dart';
import 'organization_configuration_datasources_malware_protection.dart';
import 'organization_configuration_datasources_s3_logs.dart';

class OrganizationConfigurationDatasources {
  /// Enable Kubernetes Audit Logs Monitoring automatically for new member accounts.
  final OrganizationConfigurationDatasourcesKubernetes? kubernetes;

  /// Enable Malware Protection automatically for new member accounts.
  final OrganizationConfigurationDatasourcesMalwareProtection?
  malwareProtection;

  /// Enable S3 Protection automatically for new member accounts.
  final OrganizationConfigurationDatasourcesS3Logs? s3Logs;

  /// Creates a new [OrganizationConfigurationDatasources].
  /// [kubernetes] Enable Kubernetes Audit Logs Monitoring automatically for new member accounts.
  /// [malwareProtection] Enable Malware Protection automatically for new member accounts.
  /// [s3Logs] Enable S3 Protection automatically for new member accounts.
  OrganizationConfigurationDatasources({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes': ?kubernetes == null ? null : kubernetes!.toMap(),
      'malwareProtection': ?malwareProtection == null
          ? null
          : malwareProtection!.toMap(),
      's3Logs': ?s3Logs == null ? null : s3Logs!.toMap(),
    };
  }

  factory OrganizationConfigurationDatasources.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationConfigurationDatasources(
      kubernetes: map['kubernetes'] == null
          ? null
          : OrganizationConfigurationDatasourcesKubernetes.fromMap(
              (map['kubernetes'] as Map).cast<String, dynamic>(),
            ),
      malwareProtection: map['malwareProtection'] == null
          ? null
          : OrganizationConfigurationDatasourcesMalwareProtection.fromMap(
              (map['malwareProtection'] as Map).cast<String, dynamic>(),
            ),
      s3Logs: map['s3Logs'] == null
          ? null
          : OrganizationConfigurationDatasourcesS3Logs.fromMap(
              (map['s3Logs'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
