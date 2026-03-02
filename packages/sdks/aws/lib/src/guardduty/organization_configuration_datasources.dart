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
  OrganizationConfigurationDatasources({
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
      kubernetes: map['kubernetes'] == null ? null : ((OrganizationConfigurationDatasourcesKubernetes.fromMap((map['kubernetes']! as Map).cast<String, dynamic>())).input()).input(),
      malwareProtection: map['malwareProtection'] == null ? null : ((OrganizationConfigurationDatasourcesMalwareProtection.fromMap((map['malwareProtection']! as Map).cast<String, dynamic>())).input()).input(),
      s3Logs: map['s3Logs'] == null ? null : ((OrganizationConfigurationDatasourcesS3Logs.fromMap((map['s3Logs']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

