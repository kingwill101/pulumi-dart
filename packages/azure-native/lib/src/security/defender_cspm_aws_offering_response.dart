// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_aws_offering_response_ciem.dart';
import 'defender_cspm_aws_offering_response_data_sensitivity_discovery.dart';
import 'defender_cspm_aws_offering_response_databases_dspm.dart';
import 'defender_cspm_aws_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_cspm_aws_offering_response_mdc_containers_image_assessment.dart';
import 'defender_cspm_aws_offering_response_vm_scanners.dart';

/// The CSPM P1 for AWS offering
class DefenderCspmAwsOfferingResponse {
  /// Defenders CSPM Permissions Management offering configurations
  final DefenderCspmAwsOfferingResponseCiem? ciem;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final DefenderCspmAwsOfferingResponseDataSensitivityDiscovery? dataSensitivityDiscovery;
  /// The databases DSPM configuration
  final DefenderCspmAwsOfferingResponseDatabasesDspm? databasesDspm;
  /// The offering description.
  final String description;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender container image assessment configuration
  final DefenderCspmAwsOfferingResponseMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmAws'.
  final String offeringType;
  /// The Microsoft Defender for CSPM offering VM scanning configuration
  final DefenderCspmAwsOfferingResponseVmScanners? vmScanners;

  /// Creates a new [DefenderCspmAwsOfferingResponse].
  /// [ciem] Defenders CSPM Permissions Management offering configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [databasesDspm] The databases DSPM configuration
  /// [description] The offering description.
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM offering VM scanning configuration
  DefenderCspmAwsOfferingResponse({
    this.ciem,
    this.dataSensitivityDiscovery,
    this.databasesDspm,
    required this.description,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciem': ?ciem == null ? null : ciem!.toMap(),
      'dataSensitivityDiscovery': ?dataSensitivityDiscovery == null ? null : dataSensitivityDiscovery!.toMap(),
      'databasesDspm': ?databasesDspm == null ? null : databasesDspm!.toMap(),
      'description': description,
      'mdcContainersAgentlessDiscoveryK8s': ?mdcContainersAgentlessDiscoveryK8s == null ? null : mdcContainersAgentlessDiscoveryK8s!.toMap(),
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'offeringType': offeringType,
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderCspmAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponse(
      ciem: map['ciem'] == null ? null : DefenderCspmAwsOfferingResponseCiem.fromMap((map['ciem'] as Map).cast<String, dynamic>()),
      dataSensitivityDiscovery: map['dataSensitivityDiscovery'] == null ? null : DefenderCspmAwsOfferingResponseDataSensitivityDiscovery.fromMap((map['dataSensitivityDiscovery'] as Map).cast<String, dynamic>()),
      databasesDspm: map['databasesDspm'] == null ? null : DefenderCspmAwsOfferingResponseDatabasesDspm.fromMap((map['databasesDspm'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>()),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderCspmAwsOfferingResponseMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      vmScanners: map['vmScanners'] == null ? null : DefenderCspmAwsOfferingResponseVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

