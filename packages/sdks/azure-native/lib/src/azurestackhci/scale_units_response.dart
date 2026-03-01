// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_data_response.dart';
import 'sbe_partner_info_response.dart';

/// Scale units will contains list of deployment data
class ScaleUnitsResponse {
  /// Deployment Data to deploy AzureStackHCI Cluster.
  final DeploymentDataResponse deploymentData;
  /// Solution builder extension (SBE) partner properties
  final SbePartnerInfoResponse? sbePartnerInfo;

  /// Creates a new [ScaleUnitsResponse].
  /// [deploymentData] Deployment Data to deploy AzureStackHCI Cluster.
  /// [sbePartnerInfo] Solution builder extension (SBE) partner properties
  ScaleUnitsResponse({
    required this.deploymentData,
    this.sbePartnerInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentData': deploymentData.toMap(),
      'sbePartnerInfo': ?sbePartnerInfo == null ? null : sbePartnerInfo!.toMap(),
    };
  }

  factory ScaleUnitsResponse.fromMap(Map<String, dynamic> map) {
    return ScaleUnitsResponse(
      deploymentData: DeploymentDataResponse.fromMap((map['deploymentData'] as Map).cast<String, dynamic>()),
      sbePartnerInfo: map['sbePartnerInfo'] == null ? null : SbePartnerInfoResponse.fromMap((map['sbePartnerInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

