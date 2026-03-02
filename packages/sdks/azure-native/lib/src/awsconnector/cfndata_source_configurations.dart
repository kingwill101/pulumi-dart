// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnkubernetes_configuration.dart';
import 'cfnmalware_protection_configuration.dart';
import 'cfns3_logs_configuration.dart';

/// Definition of CFNDataSourceConfigurations
class CFNDataSourceConfigurations {
  /// Property kubernetes
  final pulumi.Input<CFNKubernetesConfiguration>? kubernetes;
  /// Property malwareProtection
  final pulumi.Input<CFNMalwareProtectionConfiguration>? malwareProtection;
  /// Property s3Logs
  final pulumi.Input<CFNS3LogsConfiguration>? s3Logs;

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
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<CFNKubernetesConfiguration, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
      'malwareProtection': ?pulumi.Input.mapOptionalInputValue<CFNMalwareProtectionConfiguration, Map<String, dynamic>>(malwareProtection, (value) => value.toMap()),
      's3Logs': ?pulumi.Input.mapOptionalInputValue<CFNS3LogsConfiguration, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory CFNDataSourceConfigurations.fromMap(Map<String, dynamic> map) {
    return CFNDataSourceConfigurations(
      kubernetes: map['kubernetes'] == null ? null : (CFNKubernetesConfiguration.fromMap((map['kubernetes'] as Map).cast<String, dynamic>())).input(),
      malwareProtection: map['malwareProtection'] == null ? null : (CFNMalwareProtectionConfiguration.fromMap((map['malwareProtection'] as Map).cast<String, dynamic>())).input(),
      s3Logs: map['s3Logs'] == null ? null : (CFNS3LogsConfiguration.fromMap((map['s3Logs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

