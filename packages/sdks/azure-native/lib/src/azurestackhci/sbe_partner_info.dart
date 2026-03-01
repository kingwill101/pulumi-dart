// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbe_credentials.dart';
import 'sbe_deployment_info.dart';
import 'sbe_partner_properties.dart';

/// The solution builder extension (SBE) partner deployment info for cluster.
class SbePartnerInfo {
  /// SBE credentials list for AzureStackHCI cluster deployment.
  final List<SbeCredentials>? credentialList;
  /// List of SBE partner properties for AzureStackHCI cluster deployment.
  final List<SbePartnerProperties>? partnerProperties;
  /// SBE package and manifest information for the solution Builder Extension staged for AzureStackHCI cluster deployment.
  final SbeDeploymentInfo? sbeDeploymentInfo;

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
      'credentialList': ?credentialList == null ? null : pulumi.Input.encodeList<SbeCredentials, Map<String, dynamic>>(credentialList!, (value) => value.toMap()),
      'partnerProperties': ?partnerProperties == null ? null : pulumi.Input.encodeList<SbePartnerProperties, Map<String, dynamic>>(partnerProperties!, (value) => value.toMap()),
      'sbeDeploymentInfo': ?sbeDeploymentInfo == null ? null : sbeDeploymentInfo!.toMap(),
    };
  }

  factory SbePartnerInfo.fromMap(Map<String, dynamic> map) {
    return SbePartnerInfo(
      credentialList: map['credentialList'] == null ? null : pulumi.Input.decodeList<SbeCredentials>(map['credentialList'], (value) => SbeCredentials.fromMap((value as Map).cast<String, dynamic>())),
      partnerProperties: map['partnerProperties'] == null ? null : pulumi.Input.decodeList<SbePartnerProperties>(map['partnerProperties'], (value) => SbePartnerProperties.fromMap((value as Map).cast<String, dynamic>())),
      sbeDeploymentInfo: map['sbeDeploymentInfo'] == null ? null : SbeDeploymentInfo.fromMap((map['sbeDeploymentInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

