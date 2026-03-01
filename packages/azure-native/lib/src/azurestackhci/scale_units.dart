// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_data.dart';
import 'sbe_partner_info.dart';

/// Scale units will contains list of deployment data
class ScaleUnits {
  /// Deployment Data to deploy AzureStackHCI Cluster.
  final DeploymentData deploymentData;
  /// Solution builder extension (SBE) partner properties
  final SbePartnerInfo? sbePartnerInfo;

  /// Creates a new [ScaleUnits].
  /// [deploymentData] Deployment Data to deploy AzureStackHCI Cluster.
  /// [sbePartnerInfo] Solution builder extension (SBE) partner properties
  ScaleUnits({
    required this.deploymentData,
    this.sbePartnerInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentData': deploymentData.toMap(),
      'sbePartnerInfo': ?sbePartnerInfo == null ? null : sbePartnerInfo!.toMap(),
    };
  }

  factory ScaleUnits.fromMap(Map<String, dynamic> map) {
    return ScaleUnits(
      deploymentData: DeploymentData.fromMap((map['deploymentData'] as Map).cast<String, dynamic>()),
      sbePartnerInfo: map['sbePartnerInfo'] == null ? null : SbePartnerInfo.fromMap((map['sbePartnerInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

