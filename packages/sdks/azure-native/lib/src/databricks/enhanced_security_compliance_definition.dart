// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_update_definition.dart';
import 'compliance_security_profile_definition.dart';
import 'enhanced_security_monitoring_definition.dart';

/// Status of settings related to the Enhanced Security and Compliance Add-On.
class EnhancedSecurityComplianceDefinition {
  /// Status of automated cluster updates feature.
  final pulumi.Input<AutomaticClusterUpdateDefinition>? automaticClusterUpdate;
  /// Status of Compliance Security Profile feature.
  final pulumi.Input<ComplianceSecurityProfileDefinition>? complianceSecurityProfile;
  /// Status of Enhanced Security Monitoring feature.
  final pulumi.Input<EnhancedSecurityMonitoringDefinition>? enhancedSecurityMonitoring;

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
      'automaticClusterUpdate': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterUpdateDefinition, Map<String, dynamic>>(automaticClusterUpdate, (value) => value.toMap()),
      'complianceSecurityProfile': ?pulumi.Input.mapOptionalInputValue<ComplianceSecurityProfileDefinition, Map<String, dynamic>>(complianceSecurityProfile, (value) => value.toMap()),
      'enhancedSecurityMonitoring': ?pulumi.Input.mapOptionalInputValue<EnhancedSecurityMonitoringDefinition, Map<String, dynamic>>(enhancedSecurityMonitoring, (value) => value.toMap()),
    };
  }

  factory EnhancedSecurityComplianceDefinition.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityComplianceDefinition(
      automaticClusterUpdate: map['automaticClusterUpdate'] == null ? null : (AutomaticClusterUpdateDefinition.fromMap((map['automaticClusterUpdate']! as Map).cast<String, dynamic>())).input(),
      complianceSecurityProfile: map['complianceSecurityProfile'] == null ? null : (ComplianceSecurityProfileDefinition.fromMap((map['complianceSecurityProfile']! as Map).cast<String, dynamic>())).input(),
      enhancedSecurityMonitoring: map['enhancedSecurityMonitoring'] == null ? null : (EnhancedSecurityMonitoringDefinition.fromMap((map['enhancedSecurityMonitoring']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

