// ignore_for_file: unused_element, unnecessary_cast

import 'cfnkubernetes_configuration.dart';
import 'cfnmalware_protection_configuration.dart';
import 'cfns3_logs_configuration.dart';

/// Definition of CFNDataSourceConfigurations
class CFNDataSourceConfigurations {
  /// Property kubernetes
  final CFNKubernetesConfiguration? kubernetes;
  /// Property malwareProtection
  final CFNMalwareProtectionConfiguration? malwareProtection;
  /// Property s3Logs
  final CFNS3LogsConfiguration? s3Logs;

  /// Creates a new [CFNDataSourceConfigurations].
  /// [kubernetes] Property kubernetes
  /// [malwareProtection] Property malwareProtection
  /// [s3Logs] Property s3Logs
  CFNDataSourceConfigurations({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes': ?kubernetes == null ? null : kubernetes!.toMap(),
      'malwareProtection': ?malwareProtection == null ? null : malwareProtection!.toMap(),
      's3Logs': ?s3Logs == null ? null : s3Logs!.toMap(),
    };
  }

  factory CFNDataSourceConfigurations.fromMap(Map<String, dynamic> map) {
    return CFNDataSourceConfigurations(
      kubernetes: map['kubernetes'] == null ? null : CFNKubernetesConfiguration.fromMap((map['kubernetes'] as Map).cast<String, dynamic>()),
      malwareProtection: map['malwareProtection'] == null ? null : CFNMalwareProtectionConfiguration.fromMap((map['malwareProtection'] as Map).cast<String, dynamic>()),
      s3Logs: map['s3Logs'] == null ? null : CFNS3LogsConfiguration.fromMap((map['s3Logs'] as Map).cast<String, dynamic>()),
    );
  }
}

