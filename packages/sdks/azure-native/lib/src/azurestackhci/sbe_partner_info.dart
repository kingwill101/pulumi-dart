// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbe_credentials.dart';
import 'sbe_deployment_info.dart';
import 'sbe_partner_properties.dart';

/// The solution builder extension (SBE) partner deployment info for cluster.
class SbePartnerInfo {
  /// SBE credentials list for AzureStackHCI cluster deployment.
  final pulumi.Input<List<SbeCredentials>>? credentialList;

  /// List of SBE partner properties for AzureStackHCI cluster deployment.
  final pulumi.Input<List<SbePartnerProperties>>? partnerProperties;

  /// SBE package and manifest information for the solution Builder Extension staged for AzureStackHCI cluster deployment.
  final pulumi.Input<SbeDeploymentInfo>? sbeDeploymentInfo;

  /// Creates a new [SbePartnerInfo].
  /// [credentialList] SBE credentials list for AzureStackHCI cluster deployment.
  /// [partnerProperties] List of SBE partner properties for AzureStackHCI cluster deployment.
  /// [sbeDeploymentInfo] SBE package and manifest information for the solution Builder Extension staged for AzureStackHCI cluster deployment.
  SbePartnerInfo({
    this.credentialList,
    this.partnerProperties,
    this.sbeDeploymentInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialList':
          ?pulumi.Input.mapOptionalInputValue<
            List<SbeCredentials>,
            List<Map<String, dynamic>>
          >(
            credentialList,
            (value) =>
                pulumi.Input.encodeList<SbeCredentials, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'partnerProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<SbePartnerProperties>,
            List<Map<String, dynamic>>
          >(
            partnerProperties,
            (value) =>
                pulumi.Input.encodeList<
                  SbePartnerProperties,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sbeDeploymentInfo':
          ?pulumi.Input.mapOptionalInputValue<
            SbeDeploymentInfo,
            Map<String, dynamic>
          >(sbeDeploymentInfo, (value) => value.toMap()),
    };
  }

  factory SbePartnerInfo.fromMap(Map<String, dynamic> map) {
    return SbePartnerInfo(
      credentialList: (() {
        final guardedValue = map['credentialList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SbeCredentials>(
            guardedValue,
            (value) =>
                SbeCredentials.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      partnerProperties: (() {
        final guardedValue = map['partnerProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SbePartnerProperties>(
            guardedValue,
            (value) => SbePartnerProperties.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sbeDeploymentInfo: (() {
        final guardedValue = map['sbeDeploymentInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SbeDeploymentInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
