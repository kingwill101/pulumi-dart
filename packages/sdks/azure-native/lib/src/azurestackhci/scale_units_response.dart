// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_data_response.dart';
import 'sbe_partner_info_response.dart';

/// Scale units will contains list of deployment data
class ScaleUnitsResponse {
  /// Deployment Data to deploy AzureStackHCI Cluster.
  final pulumi.Input<DeploymentDataResponse> deploymentData;
  /// Solution builder extension (SBE) partner properties
  final pulumi.Input<SbePartnerInfoResponse>? sbePartnerInfo;

  /// Creates a new [ScaleUnitsResponse].
  /// [deploymentData] Deployment Data to deploy AzureStackHCI Cluster.
  /// [sbePartnerInfo] Solution builder extension (SBE) partner properties
  ScaleUnitsResponse({
    required this.deploymentData,
    this.sbePartnerInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentData': pulumi.Input.mapInputValue<DeploymentDataResponse, Map<String, dynamic>>(deploymentData, (value) => value.toMap()),
      'sbePartnerInfo': ?pulumi.Input.mapOptionalInputValue<SbePartnerInfoResponse, Map<String, dynamic>>(sbePartnerInfo, (value) => value.toMap()),
    };
  }

  factory ScaleUnitsResponse.fromMap(Map<String, dynamic> map) {
    return ScaleUnitsResponse(
      deploymentData: pulumi.Input.fromValue(DeploymentDataResponse.fromMap((map['deploymentData']! as Map).cast<String, dynamic>())),
      sbePartnerInfo: (() { final guardedValue = map['sbePartnerInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SbePartnerInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

