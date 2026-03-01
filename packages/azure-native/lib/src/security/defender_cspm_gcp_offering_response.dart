// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_gcp_offering_response_ciem_discovery.dart';
import 'defender_cspm_gcp_offering_response_data_sensitivity_discovery.dart';
import 'defender_cspm_gcp_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_cspm_gcp_offering_response_mdc_containers_image_assessment.dart';
import 'defender_cspm_gcp_offering_response_vm_scanners.dart';

/// The CSPM P1 for GCP offering
class DefenderCspmGcpOfferingResponse {
  /// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  final DefenderCspmGcpOfferingResponseCiemDiscovery? ciemDiscovery;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final DefenderCspmGcpOfferingResponseDataSensitivityDiscovery? dataSensitivityDiscovery;
  /// The offering description.
  final String description;
  /// The Microsoft Defender Container agentless discovery configuration
  final DefenderCspmGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final DefenderCspmGcpOfferingResponseMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmGcp'.
  final String offeringType;
  /// The Microsoft Defender for CSPM VM scanning configuration
  final DefenderCspmGcpOfferingResponseVmScanners? vmScanners;

  /// Creates a new [DefenderCspmGcpOfferingResponse].
  /// [ciemDiscovery] GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [description] The offering description.
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM VM scanning configuration
  DefenderCspmGcpOfferingResponse({
    this.ciemDiscovery,
    this.dataSensitivityDiscovery,
    required this.description,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?ciemDiscovery == null ? null : ciemDiscovery!.toMap(),
      'dataSensitivityDiscovery': ?dataSensitivityDiscovery == null ? null : dataSensitivityDiscovery!.toMap(),
      'description': description,
      'mdcContainersAgentlessDiscoveryK8s': ?mdcContainersAgentlessDiscoveryK8s == null ? null : mdcContainersAgentlessDiscoveryK8s!.toMap(),
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'offeringType': offeringType,
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderCspmGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingResponse(
      ciemDiscovery: map['ciemDiscovery'] == null ? null : DefenderCspmGcpOfferingResponseCiemDiscovery.fromMap((map['ciemDiscovery'] as Map).cast<String, dynamic>()),
      dataSensitivityDiscovery: map['dataSensitivityDiscovery'] == null ? null : DefenderCspmGcpOfferingResponseDataSensitivityDiscovery.fromMap((map['dataSensitivityDiscovery'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : DefenderCspmGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>()),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderCspmGcpOfferingResponseMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      vmScanners: map['vmScanners'] == null ? null : DefenderCspmGcpOfferingResponseVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

