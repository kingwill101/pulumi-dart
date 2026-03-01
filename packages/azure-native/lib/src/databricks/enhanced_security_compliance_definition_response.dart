// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_cluster_update_definition_response.dart';
import 'compliance_security_profile_definition_response.dart';
import 'enhanced_security_monitoring_definition_response.dart';

/// Status of settings related to the Enhanced Security and Compliance Add-On.
class EnhancedSecurityComplianceDefinitionResponse {
  /// Status of automated cluster updates feature.
  final AutomaticClusterUpdateDefinitionResponse? automaticClusterUpdate;
  /// Status of Compliance Security Profile feature.
  final ComplianceSecurityProfileDefinitionResponse? complianceSecurityProfile;
  /// Status of Enhanced Security Monitoring feature.
  final EnhancedSecurityMonitoringDefinitionResponse? enhancedSecurityMonitoring;

  /// Creates a new [EnhancedSecurityComplianceDefinitionResponse].
  /// [automaticClusterUpdate] Status of automated cluster updates feature.
  /// [complianceSecurityProfile] Status of Compliance Security Profile feature.
  /// [enhancedSecurityMonitoring] Status of Enhanced Security Monitoring feature.
  EnhancedSecurityComplianceDefinitionResponse({
    this.automaticClusterUpdate,
    this.complianceSecurityProfile,
    this.enhancedSecurityMonitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticClusterUpdate': ?automaticClusterUpdate == null ? null : automaticClusterUpdate!.toMap(),
      'complianceSecurityProfile': ?complianceSecurityProfile == null ? null : complianceSecurityProfile!.toMap(),
      'enhancedSecurityMonitoring': ?enhancedSecurityMonitoring == null ? null : enhancedSecurityMonitoring!.toMap(),
    };
  }

  factory EnhancedSecurityComplianceDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityComplianceDefinitionResponse(
      automaticClusterUpdate: map['automaticClusterUpdate'] == null ? null : AutomaticClusterUpdateDefinitionResponse.fromMap((map['automaticClusterUpdate'] as Map).cast<String, dynamic>()),
      complianceSecurityProfile: map['complianceSecurityProfile'] == null ? null : ComplianceSecurityProfileDefinitionResponse.fromMap((map['complianceSecurityProfile'] as Map).cast<String, dynamic>()),
      enhancedSecurityMonitoring: map['enhancedSecurityMonitoring'] == null ? null : EnhancedSecurityMonitoringDefinitionResponse.fromMap((map['enhancedSecurityMonitoring'] as Map).cast<String, dynamic>()),
    );
  }
}

