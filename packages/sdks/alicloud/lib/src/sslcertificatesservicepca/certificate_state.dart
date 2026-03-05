// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The key algorithm type of the CA certificate. The key algorithm is in the &lt;encryption algorithm&gt;_&lt;key length&gt; format. Valid values:
  /// - `RSA_1024`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `RSA_2048`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `RSA_4096`: The corresponding signature algorithm is Sha256WithRSA.
  /// - `ECC_256`: The signature algorithm is Sha256WithECDSA.
  /// - `ECC_384`: The corresponding signature algorithm is Sha256WithECDSA.
  /// - `ECC_512`: The signature algorithm is Sha256WithECDSA.
  /// - `SM2_256`: The corresponding signature algorithm is SM3WithSM2.
  /// &gt; **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `algorithm` is required.
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
  /// &gt; **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `parent_identifier` is required.
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
  /// &gt; **NOTE:**  It is recommended to set to `5` to `10` years.
  final pulumi.Input<int>? years;

  /// Creates a new [CertificateState].
  /// [algorithm] The key algorithm type of the CA certificate. The key algorithm is in the &lt;encryption algorithm&gt;_&lt;key length&gt; format. Valid values:
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
  CertificateState({
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

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aliasName: (() { final guardedValue = map['aliasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      countryCode: (() { final guardedValue = map['countryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crlDay: (() { final guardedValue = map['crlDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableCrl: (() { final guardedValue = map['enableCrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedKeyUsages: (() { final guardedValue = map['extendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationUnit: (() { final guardedValue = map['organizationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentIdentifier: (() { final guardedValue = map['parentIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathLenConstraint: (() { final guardedValue = map['pathLenConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      years: (() { final guardedValue = map['years']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

