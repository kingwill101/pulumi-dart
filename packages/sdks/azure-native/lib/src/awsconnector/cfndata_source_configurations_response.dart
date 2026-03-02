// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnkubernetes_configuration_response.dart';
import 'cfnmalware_protection_configuration_response.dart';
import 'cfns3_logs_configuration_response.dart';

/// Definition of CFNDataSourceConfigurations
class CFNDataSourceConfigurationsResponse {
  /// Property kubernetes
  final pulumi.Input<CFNKubernetesConfigurationResponse>? kubernetes;
  /// Property malwareProtection
  final pulumi.Input<CFNMalwareProtectionConfigurationResponse>? malwareProtection;
  /// Property s3Logs
  final pulumi.Input<CFNS3LogsConfigurationResponse>? s3Logs;

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
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<CFNKubernetesConfigurationResponse, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
      'malwareProtection': ?pulumi.Input.mapOptionalInputValue<CFNMalwareProtectionConfigurationResponse, Map<String, dynamic>>(malwareProtection, (value) => value.toMap()),
      's3Logs': ?pulumi.Input.mapOptionalInputValue<CFNS3LogsConfigurationResponse, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory CFNDataSourceConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return CFNDataSourceConfigurationsResponse(
      kubernetes: map['kubernetes'] == null ? null : (CFNKubernetesConfigurationResponse.fromMap((map['kubernetes'] as Map).cast<String, dynamic>())).input(),
      malwareProtection: map['malwareProtection'] == null ? null : (CFNMalwareProtectionConfigurationResponse.fromMap((map['malwareProtection'] as Map).cast<String, dynamic>())).input(),
      s3Logs: map['s3Logs'] == null ? null : (CFNS3LogsConfigurationResponse.fromMap((map['s3Logs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

