// ignore_for_file: unused_element, unnecessary_cast

import 'cfnkubernetes_configuration_response.dart';
import 'cfnmalware_protection_configuration_response.dart';
import 'cfns3_logs_configuration_response.dart';

/// Definition of CFNDataSourceConfigurations
class CFNDataSourceConfigurationsResponse {
  /// Property kubernetes
  final CFNKubernetesConfigurationResponse? kubernetes;
  /// Property malwareProtection
  final CFNMalwareProtectionConfigurationResponse? malwareProtection;
  /// Property s3Logs
  final CFNS3LogsConfigurationResponse? s3Logs;

  /// Creates a new [CFNDataSourceConfigurationsResponse].
  /// [kubernetes] Property kubernetes
  /// [malwareProtection] Property malwareProtection
  /// [s3Logs] Property s3Logs
  CFNDataSourceConfigurationsResponse({
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

  factory CFNDataSourceConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return CFNDataSourceConfigurationsResponse(
      kubernetes: map['kubernetes'] == null ? null : CFNKubernetesConfigurationResponse.fromMap((map['kubernetes'] as Map).cast<String, dynamic>()),
      malwareProtection: map['malwareProtection'] == null ? null : CFNMalwareProtectionConfigurationResponse.fromMap((map['malwareProtection'] as Map).cast<String, dynamic>()),
      s3Logs: map['s3Logs'] == null ? null : CFNS3LogsConfigurationResponse.fromMap((map['s3Logs'] as Map).cast<String, dynamic>()),
    );
  }
}

