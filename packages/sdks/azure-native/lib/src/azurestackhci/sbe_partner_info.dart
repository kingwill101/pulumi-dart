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
      'credentialList': ?pulumi.Input.mapOptionalInputValue<List<SbeCredentials>, List<Map<String, dynamic>>>(credentialList, (value) => pulumi.Input.encodeList<SbeCredentials, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partnerProperties': ?pulumi.Input.mapOptionalInputValue<List<SbePartnerProperties>, List<Map<String, dynamic>>>(partnerProperties, (value) => pulumi.Input.encodeList<SbePartnerProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sbeDeploymentInfo': ?pulumi.Input.mapOptionalInputValue<SbeDeploymentInfo, Map<String, dynamic>>(sbeDeploymentInfo, (value) => value.toMap()),
    };
  }

  factory SbePartnerInfo.fromMap(Map<String, dynamic> map) {
    return SbePartnerInfo(
      credentialList: map['credentialList'] == null ? null : (pulumi.Input.decodeList<SbeCredentials>(map['credentialList']!, (value) => SbeCredentials.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partnerProperties: map['partnerProperties'] == null ? null : (pulumi.Input.decodeList<SbePartnerProperties>(map['partnerProperties']!, (value) => SbePartnerProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sbeDeploymentInfo: map['sbeDeploymentInfo'] == null ? null : (SbeDeploymentInfo.fromMap((map['sbeDeploymentInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

