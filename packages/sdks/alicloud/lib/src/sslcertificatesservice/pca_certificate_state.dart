// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PcaCertificate resources.
class PcaCertificateState {
  /// The key algorithm type of the CA certificate. The key algorithm is in the <encryption algorithm>_<key length> format. Valid values:
  /// - `RSA_1024`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `RSA_2048`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `RSA_4096`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `ECC_256`: The signature algorithm is Sha256WithECDSA.
  /// - `ECC_384`: The corresponding signature algorithm is Sha256WithECDSA.
  /// - `ECC_512`: The signature algorithm is Sha256WithECDSA.
  /// - `SM2_256`: The corresponding signature algorithm is SM3WithSM2.
  /// > **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `algorithm` is required.
  final pulumi.Input<String>? algorithm;
  final pulumi.Input<String>? aliasName;
  /// The type of the CA certificate. Default value: `ROOT`. Valid values:
  /// - `ROOT`: A root CA certificate.
  /// - `SUB_ROOT`: A subordinate CA certificate.
  final pulumi.Input<String>? certificateType;
  /// The common name or abbreviation of the organization. Support the use of Chinese, English characters.
  final pulumi.Input<String>? commonName;
  /// The code of the country or region in which the organization is located, using a two-digit capital abbreviation. For example, `CN` represents China and `US` represents the United States.
  final pulumi.Input<String>? countryCode;
  /// The validity period for the CRL, in days. Valid values: `1` to `365`. **Note:** `crl_day` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  final pulumi.Input<int>? crlDay;
  /// This setting turns the Certificate Revocation List (CRL) service on or off. Valid values:
  final pulumi.Input<bool>? enableCrl;
  /// The extended key usages. **Note:** `extended_key_usages` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  final pulumi.Input<List<String>>? extendedKeyUsages;
  /// Name of the city where the organization is located. Support the use of Chinese, English characters.
  final pulumi.Input<String>? locality;
  /// The name of the organization (corresponding to your enterprise or company) associated with the CA certificate. Support the use of Chinese, English characters.
  final pulumi.Input<String>? organization;
  /// The name of the department or branch under the organization. Support the use of Chinese, English characters.
  final pulumi.Input<String>? organizationUnit;
  /// The unique identifier of the root CA certificate.
  /// > **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `parent_identifier` is required.
  final pulumi.Input<String>? parentIdentifier;
  /// The certificate path length. Default value: `0`. **Note:** `path_len_constraint` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  final pulumi.Input<int>? pathLenConstraint;
  /// A resource property field representing the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the province, municipality, or autonomous region in which the organization is located. Support the use of Chinese, English characters.
  final pulumi.Input<String>? state;
  /// The status of the CA certificate.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The validity period of the CA certificate, in years.
  /// > **NOTE:**  It is recommended to set to `5` to `10` years.
  final pulumi.Input<int>? years;

  /// Creates a new [PcaCertificateState].
  /// [algorithm] The key algorithm type of the CA certificate. The key algorithm is in the <encryption algorithm>_<key length> format. Valid values:
  /// [aliasName] Optional.
  /// [certificateType] The type of the CA certificate. Default value: `ROOT`. Valid values:
  /// [commonName] The common name or abbreviation of the organization. Support the use of Chinese, English characters.
  /// [countryCode] The code of the country or region in which the organization is located, using a two-digit capital abbreviation. For example, `CN` represents China and `US` represents the United States.
  /// [crlDay] The validity period for the CRL, in days. Valid values: `1` to `365`. **Note:** `crl_day` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  /// [enableCrl] This setting turns the Certificate Revocation List (CRL) service on or off. Valid values:
  /// [extendedKeyUsages] The extended key usages. **Note:** `extended_key_usages` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  /// [locality] Name of the city where the organization is located. Support the use of Chinese, English characters.
  /// [organization] The name of the organization (corresponding to your enterprise or company) associated with the CA certificate. Support the use of Chinese, English characters.
  /// [organizationUnit] The name of the department or branch under the organization. Support the use of Chinese, English characters.
  /// [parentIdentifier] The unique identifier of the root CA certificate.
  /// [pathLenConstraint] The certificate path length. Default value: `0`. **Note:** `path_len_constraint` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  /// [resourceGroupId] A resource property field representing the resource group.
  /// [state] The name of the province, municipality, or autonomous region in which the organization is located. Support the use of Chinese, English characters.
  /// [status] The status of the CA certificate.
  /// [tags] The tag of the resource.
  /// [years] The validity period of the CA certificate, in years.
  PcaCertificateState({
    this.algorithm,
    this.aliasName,
    this.certificateType,
    this.commonName,
    this.countryCode,
    this.crlDay,
    this.enableCrl,
    this.extendedKeyUsages,
    this.locality,
    this.organization,
    this.organizationUnit,
    this.parentIdentifier,
    this.pathLenConstraint,
    this.resourceGroupId,
    this.state,
    this.status,
    this.tags,
    this.years,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'aliasName': ?aliasName,
      'certificateType': ?certificateType,
      'commonName': ?commonName,
      'countryCode': ?countryCode,
      'crlDay': ?crlDay,
      'enableCrl': ?enableCrl,
      'extendedKeyUsages': ?extendedKeyUsages,
      'locality': ?locality,
      'organization': ?organization,
      'organizationUnit': ?organizationUnit,
      'parentIdentifier': ?parentIdentifier,
      'pathLenConstraint': ?pathLenConstraint,
      'resourceGroupId': ?resourceGroupId,
      'state': ?state,
      'status': ?status,
      'tags': ?tags,
      'years': ?years,
    };
  }

  factory PcaCertificateState.fromMap(Map<String, dynamic> map) {
    return PcaCertificateState(
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as String).input(),
      aliasName: map['aliasName'] == null ? null : (map['aliasName'] as String).input(),
      certificateType: map['certificateType'] == null ? null : (map['certificateType'] as String).input(),
      commonName: map['commonName'] == null ? null : (map['commonName'] as String).input(),
      countryCode: map['countryCode'] == null ? null : (map['countryCode'] as String).input(),
      crlDay: map['crlDay'] == null ? null : (map['crlDay'] as int).input(),
      enableCrl: map['enableCrl'] == null ? null : (map['enableCrl'] as bool).input(),
      extendedKeyUsages: map['extendedKeyUsages'] == null ? null : ((map['extendedKeyUsages'] as List).cast<String>()).input(),
      locality: map['locality'] == null ? null : (map['locality'] as String).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
      organizationUnit: map['organizationUnit'] == null ? null : (map['organizationUnit'] as String).input(),
      parentIdentifier: map['parentIdentifier'] == null ? null : (map['parentIdentifier'] as String).input(),
      pathLenConstraint: map['pathLenConstraint'] == null ? null : (map['pathLenConstraint'] as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      years: map['years'] == null ? null : (map['years'] as int).input(),
    );
  }
}

