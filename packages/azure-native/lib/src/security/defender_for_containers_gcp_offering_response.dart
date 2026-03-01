// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_containers_gcp_offering_response_data_pipeline_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_for_containers_gcp_offering_response_mdc_containers_image_assessment.dart';
import 'defender_for_containers_gcp_offering_response_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_response_vm_scanners.dart';

/// The containers GCP offering
class DefenderForContainersGcpOfferingResponse {
  /// The native cloud connection configuration
  final DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection? dataPipelineNativeCloudConnection;
  /// The offering description.
  final String description;
  /// Is audit logs data collection enabled
  final bool? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final bool? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final bool? enablePolicyAgentAutoProvisioning;
  /// The Microsoft Defender Container agentless discovery configuration
  final DefenderForContainersGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The native cloud connection configuration
  final DefenderForContainersGcpOfferingResponseNativeCloudConnection? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersGcp'.
  final String offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final DefenderForContainersGcpOfferingResponseVmScanners? vmScanners;

  /// Creates a new [DefenderForContainersGcpOfferingResponse].
  /// [dataPipelineNativeCloudConnection] The native cloud connection configuration
  /// [description] The offering description.
  /// [enableAuditLogsAutoProvisioning] Is audit logs data collection enabled
  /// [enableDefenderAgentAutoProvisioning] Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  /// [enablePolicyAgentAutoProvisioning] Is Policy Kubernetes agent auto provisioning enabled
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  DefenderForContainersGcpOfferingResponse({
    this.dataPipelineNativeCloudConnection,
    required this.description,
    this.enableAuditLogsAutoProvisioning,
    this.enableDefenderAgentAutoProvisioning,
    this.enablePolicyAgentAutoProvisioning,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    this.nativeCloudConnection,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPipelineNativeCloudConnection': ?dataPipelineNativeCloudConnection == null ? null : dataPipelineNativeCloudConnection!.toMap(),
      'description': description,
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'mdcContainersAgentlessDiscoveryK8s': ?mdcContainersAgentlessDiscoveryK8s == null ? null : mdcContainersAgentlessDiscoveryK8s!.toMap(),
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'nativeCloudConnection': ?nativeCloudConnection == null ? null : nativeCloudConnection!.toMap(),
      'offeringType': offeringType,
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderForContainersGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingResponse(
      dataPipelineNativeCloudConnection: map['dataPipelineNativeCloudConnection'] == null ? null : DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection.fromMap((map['dataPipelineNativeCloudConnection'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      enableAuditLogsAutoProvisioning: map['enableAuditLogsAutoProvisioning'] == null ? null : map['enableAuditLogsAutoProvisioning'] as bool,
      enableDefenderAgentAutoProvisioning: map['enableDefenderAgentAutoProvisioning'] == null ? null : map['enableDefenderAgentAutoProvisioning'] as bool,
      enablePolicyAgentAutoProvisioning: map['enablePolicyAgentAutoProvisioning'] == null ? null : map['enablePolicyAgentAutoProvisioning'] as bool,
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : DefenderForContainersGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>()),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : DefenderForContainersGcpOfferingResponseNativeCloudConnection.fromMap((map['nativeCloudConnection'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      vmScanners: map['vmScanners'] == null ? null : DefenderForContainersGcpOfferingResponseVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

