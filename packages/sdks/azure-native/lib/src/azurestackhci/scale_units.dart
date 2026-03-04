// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_data.dart';
import 'sbe_partner_info.dart';

/// Scale units will contains list of deployment data
class ScaleUnits {
  /// Deployment Data to deploy AzureStackHCI Cluster.
  final pulumi.Input<DeploymentData> deploymentData;

  /// Solution builder extension (SBE) partner properties
  final pulumi.Input<SbePartnerInfo>? sbePartnerInfo;

  /// Creates a new [ScaleUnits].
  /// [deploymentData] Deployment Data to deploy AzureStackHCI Cluster.
  /// [sbePartnerInfo] Solution builder extension (SBE) partner properties
  ScaleUnits({required this.deploymentData, this.sbePartnerInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentData':
          pulumi.Input.mapInputValue<DeploymentData, Map<String, dynamic>>(
            deploymentData,
            (value) => value.toMap(),
          ),
      'sbePartnerInfo':
          ?pulumi.Input.mapOptionalInputValue<
            SbePartnerInfo,
            Map<String, dynamic>
          >(sbePartnerInfo, (value) => value.toMap()),
    };
  }

  factory ScaleUnits.fromMap(Map<String, dynamic> map) {
    return ScaleUnits(
      deploymentData: pulumi.Input.fromValue(
        DeploymentData.fromMap(
          (map['deploymentData']! as Map).cast<String, dynamic>(),
        ),
      ),
      sbePartnerInfo: (() {
        final guardedValue = map['sbePartnerInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SbePartnerInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
