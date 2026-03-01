// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sslcertificatesservicepca_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_sslcertificatesservicepca_certificate_certificate_args_doc}
class CertificateArgs {
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
  final pulumi.Input<String> commonName;
  /// The code of the country or region in which the organization is located, using a two-digit capital abbreviation. For example, `CN` represents China and `US` represents the United States.
  final pulumi.Input<String>? countryCode;
  /// The validity period for the CRL, in days. Valid values: `1` to `365`. **Note:** `crl_day` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  final pulumi.Input<int>? crlDay;
  /// This setting turns the Certificate Revocation List (CRL) service on or off. Valid values:
  final pulumi.Input<bool>? enableCrl;
  /// The extended key usages. **Note:** `extended_key_usages` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  final pulumi.Input<List<String>>? extendedKeyUsages;
  /// Name of the city where the organization is located. Support the use of Chinese, English characters.
  final pulumi.Input<String> locality;
  /// The name of the organization (corresponding to your enterprise or company) associated with the CA certificate. Support the use of Chinese, English characters.
  final pulumi.Input<String> organization;
  /// The name of the department or branch under the organization. Support the use of Chinese, English characters.
  final pulumi.Input<String> organizationUnit;
  /// The unique identifier of the root CA certificate.
  /// > **NOTE:** If `certificate_type` is set to `SUB_ROOT`, `parent_identifier` is required.
  final pulumi.Input<String>? parentIdentifier;
  /// The certificate path length. Default value: `0`. **Note:** `path_len_constraint` takes effect only if `certificate_type` is set to `SUB_ROOT`.
  final pulumi.Input<int>? pathLenConstraint;
  /// A resource property field representing the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the province, municipality, or autonomous region in which the organization is located. Support the use of Chinese, English characters.
  final pulumi.Input<String> state;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The validity period of the CA certificate, in years.
  /// > **NOTE:**  It is recommended to set to `5` to `10` years.
  final pulumi.Input<int> years;

  /// Creates a new [CertificateArgs].
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
  /// [tags] The tag of the resource.
  /// [years] The validity period of the CA certificate, in years.
  CertificateArgs({
    pulumi.Output<String>? algorithm,
    pulumi.Output<String>? aliasName,
    pulumi.Output<String>? certificateType,
    required pulumi.Output<String> commonName,
    pulumi.Output<String>? countryCode,
    pulumi.Output<int>? crlDay,
    pulumi.Output<bool>? enableCrl,
    pulumi.Output<List<String>>? extendedKeyUsages,
    required pulumi.Output<String> locality,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> organizationUnit,
    pulumi.Output<String>? parentIdentifier,
    pulumi.Output<int>? pathLenConstraint,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> state,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<int> years,
  }) :
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      aliasName = pulumi.Input.asOptionalInput<String>(aliasName),
      certificateType = pulumi.Input.asOptionalInput<String>(certificateType),
      commonName = pulumi.Input.asInput<String>(commonName),
      countryCode = pulumi.Input.asOptionalInput<String>(countryCode),
      crlDay = pulumi.Input.asOptionalInput<int>(crlDay),
      enableCrl = pulumi.Input.asOptionalInput<bool>(enableCrl),
      extendedKeyUsages = pulumi.Input.asOptionalInput<List<String>>(extendedKeyUsages),
      locality = pulumi.Input.asInput<String>(locality),
      organization = pulumi.Input.asInput<String>(organization),
      organizationUnit = pulumi.Input.asInput<String>(organizationUnit),
      parentIdentifier = pulumi.Input.asOptionalInput<String>(parentIdentifier),
      pathLenConstraint = pulumi.Input.asOptionalInput<int>(pathLenConstraint),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      state = pulumi.Input.asInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      years = pulumi.Input.asInput<int>(years);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'aliasName': ?aliasName,
      'certificateType': ?certificateType,
      'commonName': commonName,
      'countryCode': ?countryCode,
      'crlDay': ?crlDay,
      'enableCrl': ?enableCrl,
      'extendedKeyUsages': ?extendedKeyUsages,
      'locality': locality,
      'organization': organization,
      'organizationUnit': organizationUnit,
      'parentIdentifier': ?parentIdentifier,
      'pathLenConstraint': ?pathLenConstraint,
      'resourceGroupId': ?resourceGroupId,
      'state': state,
      'tags': ?tags,
      'years': years,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      aliasName: map['aliasName'] == null ? null : pulumi.Output.create<String>(map['aliasName'] as String),
      certificateType: map['certificateType'] == null ? null : pulumi.Output.create<String>(map['certificateType'] as String),
      commonName: pulumi.Output.create<String>(map['commonName'] as String),
      countryCode: map['countryCode'] == null ? null : pulumi.Output.create<String>(map['countryCode'] as String),
      crlDay: map['crlDay'] == null ? null : pulumi.Output.create<int>(map['crlDay'] as int),
      enableCrl: map['enableCrl'] == null ? null : pulumi.Output.create<bool>(map['enableCrl'] as bool),
      extendedKeyUsages: map['extendedKeyUsages'] == null ? null : pulumi.Output.create<List<String>>((map['extendedKeyUsages'] as List).cast<String>()),
      locality: pulumi.Output.create<String>(map['locality'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      organizationUnit: pulumi.Output.create<String>(map['organizationUnit'] as String),
      parentIdentifier: map['parentIdentifier'] == null ? null : pulumi.Output.create<String>(map['parentIdentifier'] as String),
      pathLenConstraint: map['pathLenConstraint'] == null ? null : pulumi.Output.create<int>(map['pathLenConstraint'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      state: pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      years: pulumi.Output.create<int>(map['years'] as int),
    );
  }
}

