// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_cluster_update_definition.dart';
import 'compliance_security_profile_definition.dart';
import 'enhanced_security_monitoring_definition.dart';

/// Status of settings related to the Enhanced Security and Compliance Add-On.
class EnhancedSecurityComplianceDefinition {
  /// Status of automated cluster updates feature.
  final AutomaticClusterUpdateDefinition? automaticClusterUpdate;
  /// Status of Compliance Security Profile feature.
  final ComplianceSecurityProfileDefinition? complianceSecurityProfile;
  /// Status of Enhanced Security Monitoring feature.
  final EnhancedSecurityMonitoringDefinition? enhancedSecurityMonitoring;

  /// Creates a new [EnhancedSecurityComplianceDefinition].
  /// [automaticClusterUpdate] Status of automated cluster updates feature.
  /// [complianceSecurityProfile] Status of Compliance Security Profile feature.
  /// [enhancedSecurityMonitoring] Status of Enhanced Security Monitoring feature.
  EnhancedSecurityComplianceDefinition({
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

  factory EnhancedSecurityComplianceDefinition.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityComplianceDefinition(
      automaticClusterUpdate: map['automaticClusterUpdate'] == null ? null : AutomaticClusterUpdateDefinition.fromMap((map['automaticClusterUpdate'] as Map).cast<String, dynamic>()),
      complianceSecurityProfile: map['complianceSecurityProfile'] == null ? null : ComplianceSecurityProfileDefinition.fromMap((map['complianceSecurityProfile'] as Map).cast<String, dynamic>()),
      enhancedSecurityMonitoring: map['enhancedSecurityMonitoring'] == null ? null : EnhancedSecurityMonitoringDefinition.fromMap((map['enhancedSecurityMonitoring'] as Map).cast<String, dynamic>()),
    );
  }
}

