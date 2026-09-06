// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_update_definition_response.dart';
import 'compliance_security_profile_definition_response.dart';
import 'enhanced_security_monitoring_definition_response.dart';

/// Status of settings related to the Enhanced Security and Compliance Add-On.
class EnhancedSecurityComplianceDefinitionResponse {
  /// Status of automated cluster updates feature.
  final pulumi.Input<AutomaticClusterUpdateDefinitionResponse?>? automaticClusterUpdate;
  /// Status of Compliance Security Profile feature.
  final pulumi.Input<ComplianceSecurityProfileDefinitionResponse?>? complianceSecurityProfile;
  /// Status of Enhanced Security Monitoring feature.
  final pulumi.Input<EnhancedSecurityMonitoringDefinitionResponse?>? enhancedSecurityMonitoring;

  /// Creates a new [EnhancedSecurityComplianceDefinitionResponse].
  /// [automaticClusterUpdate] Status of automated cluster updates feature.
  /// [complianceSecurityProfile] Status of Compliance Security Profile feature.
  /// [enhancedSecurityMonitoring] Status of Enhanced Security Monitoring feature.
  const EnhancedSecurityComplianceDefinitionResponse({
    this.automaticClusterUpdate,
    this.complianceSecurityProfile,
    this.enhancedSecurityMonitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticClusterUpdate': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterUpdateDefinitionResponse, Map<String, dynamic>>(automaticClusterUpdate, (value) => value.toMap()),
      'complianceSecurityProfile': ?pulumi.Input.mapOptionalInputValue<ComplianceSecurityProfileDefinitionResponse, Map<String, dynamic>>(complianceSecurityProfile, (value) => value.toMap()),
      'enhancedSecurityMonitoring': ?pulumi.Input.mapOptionalInputValue<EnhancedSecurityMonitoringDefinitionResponse, Map<String, dynamic>>(enhancedSecurityMonitoring, (value) => value.toMap()),
    };
  }

  factory EnhancedSecurityComplianceDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityComplianceDefinitionResponse(
      automaticClusterUpdate: (() { final guardedValue = map['automaticClusterUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterUpdateDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      complianceSecurityProfile: (() { final guardedValue = map['complianceSecurityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComplianceSecurityProfileDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enhancedSecurityMonitoring: (() { final guardedValue = map['enhancedSecurityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnhancedSecurityMonitoringDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
