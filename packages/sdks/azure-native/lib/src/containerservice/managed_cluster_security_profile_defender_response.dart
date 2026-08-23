// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_security_profile_defender_security_monitoring_response.dart';

/// Microsoft Defender settings for the security profile.
class ManagedClusterSecurityProfileDefenderResponse {
  /// Resource ID of the Log Analytics workspace to be associated with Microsoft Defender. When Microsoft Defender is enabled, this field is required and must be a valid workspace resource ID. When Microsoft Defender is disabled, leave the field empty.
  final pulumi.Input<String>? logAnalyticsWorkspaceResourceId;
  /// Microsoft Defender threat detection for Cloud settings for the security profile.
  final pulumi.Input<ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse>? securityMonitoring;

  /// Creates a new [ManagedClusterSecurityProfileDefenderResponse].
  /// [logAnalyticsWorkspaceResourceId] Resource ID of the Log Analytics workspace to be associated with Microsoft Defender. When Microsoft Defender is enabled, this field is required and must be a valid workspace resource ID. When Microsoft Defender is disabled, leave the field empty.
  /// [securityMonitoring] Microsoft Defender threat detection for Cloud settings for the security profile.
  const ManagedClusterSecurityProfileDefenderResponse({
    this.logAnalyticsWorkspaceResourceId,
    this.securityMonitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceResourceId': ?logAnalyticsWorkspaceResourceId,
      'securityMonitoring': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse, Map<String, dynamic>>(securityMonitoring, (value) => value.toMap()),
    };
  }

  factory ManagedClusterSecurityProfileDefenderResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileDefenderResponse(
      logAnalyticsWorkspaceResourceId: (() { final guardedValue = map['logAnalyticsWorkspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityMonitoring: (() { final guardedValue = map['securityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
