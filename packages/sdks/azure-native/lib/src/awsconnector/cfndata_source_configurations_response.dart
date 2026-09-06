// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnkubernetes_configuration_response.dart';
import 'cfnmalware_protection_configuration_response.dart';
import 'cfns3_logs_configuration_response.dart';

/// Definition of CFNDataSourceConfigurations
class CFNDataSourceConfigurationsResponse {
  /// Property kubernetes
  final pulumi.Input<CFNKubernetesConfigurationResponse?>? kubernetes;
  /// Property malwareProtection
  final pulumi.Input<CFNMalwareProtectionConfigurationResponse?>? malwareProtection;
  /// Property s3Logs
  final pulumi.Input<CFNS3LogsConfigurationResponse?>? s3Logs;

  /// Creates a new [CFNDataSourceConfigurationsResponse].
  /// [kubernetes] Property kubernetes
  /// [malwareProtection] Property malwareProtection
  /// [s3Logs] Property s3Logs
  const CFNDataSourceConfigurationsResponse({
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
      kubernetes: (() { final guardedValue = map['kubernetes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNKubernetesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      malwareProtection: (() { final guardedValue = map['malwareProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNMalwareProtectionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Logs: (() { final guardedValue = map['s3Logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNS3LogsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
