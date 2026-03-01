// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbe_credentials_response.dart';
import 'sbe_deployment_info_response.dart';
import 'sbe_partner_properties_response.dart';

/// The solution builder extension (SBE) partner deployment info for cluster.
class SbePartnerInfoResponse {
  /// SBE credentials list for AzureStackHCI cluster deployment.
  final List<SbeCredentialsResponse>? credentialList;
  /// List of SBE partner properties for AzureStackHCI cluster deployment.
  final List<SbePartnerPropertiesResponse>? partnerProperties;
  /// SBE package and manifest information for the solution Builder Extension staged for AzureStackHCI cluster deployment.
  final SbeDeploymentInfoResponse? sbeDeploymentInfo;

  /// Creates a new [SbePartnerInfoResponse].
  /// [credentialList] SBE credentials list for AzureStackHCI cluster deployment.
  /// [partnerProperties] List of SBE partner properties for AzureStackHCI cluster deployment.
  /// [sbeDeploymentInfo] SBE package and manifest information for the solution Builder Extension staged for AzureStackHCI cluster deployment.
  SbePartnerInfoResponse({
    this.credentialList,
    this.partnerProperties,
    this.sbeDeploymentInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialList': ?credentialList == null ? null : pulumi.Input.encodeList<SbeCredentialsResponse, Map<String, dynamic>>(credentialList!, (value) => value.toMap()),
      'partnerProperties': ?partnerProperties == null ? null : pulumi.Input.encodeList<SbePartnerPropertiesResponse, Map<String, dynamic>>(partnerProperties!, (value) => value.toMap()),
      'sbeDeploymentInfo': ?sbeDeploymentInfo == null ? null : sbeDeploymentInfo!.toMap(),
    };
  }

  factory SbePartnerInfoResponse.fromMap(Map<String, dynamic> map) {
    return SbePartnerInfoResponse(
      credentialList: map['credentialList'] == null ? null : pulumi.Input.decodeList<SbeCredentialsResponse>(map['credentialList'], (value) => SbeCredentialsResponse.fromMap((value as Map).cast<String, dynamic>())),
      partnerProperties: map['partnerProperties'] == null ? null : pulumi.Input.decodeList<SbePartnerPropertiesResponse>(map['partnerProperties'], (value) => SbePartnerPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      sbeDeploymentInfo: map['sbeDeploymentInfo'] == null ? null : SbeDeploymentInfoResponse.fromMap((map['sbeDeploymentInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

