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
  const CFNDataSourceConfigurations({
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
      kubernetes: (() { final guardedValue = map['kubernetes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNKubernetesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      malwareProtection: (() { final guardedValue = map['malwareProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNMalwareProtectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Logs: (() { final guardedValue = map['s3Logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNS3LogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
