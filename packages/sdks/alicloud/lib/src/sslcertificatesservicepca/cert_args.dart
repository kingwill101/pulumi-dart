// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sslcertificatesservicepca_cert_cert_args_doc}
/// The set of arguments for Cert.
/// {@endtemplate}
/// {@macro pulumi_sslcertificatesservicepca_cert_cert_args_doc}
class CertArgs {
  /// The service expiration time of the client certificate, specified as a Unix timestamp in seconds.
  ///
  /// > **NOTE:**  The `before_time` and `after_time` parameters must either both be empty or both be specified.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? afterTime;
  /// The key algorithm of the client certificate. The key algorithm is specified in the format `_`. Valid values:
  /// - `RSA_1024`: corresponds to the signature algorithm Sha256WithRSA.
  /// - `RSA_2048`: corresponds to the signature algorithm Sha256WithRSA.
  /// - `RSA_4096`: corresponds to the signature algorithm Sha256WithRSA.
  /// - `ECC_256`: corresponds to the signature algorithm Sha256WithECDSA.
  /// - `ECC_384`: corresponds to the signature algorithm Sha256WithECDSA.
  /// - `ECC_512`: corresponds to the signature algorithm Sha256WithECDSA.
  /// - `SM2_256`: corresponds to the signature algorithm SM3WithSM2.
  ///
  /// The encryption algorithm of the client certificate must match that of the subordinate CA certificate, but the key length may differ. For example, if the key algorithm of the subordinate CA certificate is RSA_2048, the key algorithm of the client certificate must be one of RSA_1024, RSA_2048, or RSA_4096.
  ///
  /// > **NOTE:** You can call [DescribeCACertificate](https://help.aliyun.com/document_detail/465954.html) to query the key algorithm of the subordinate CA certificate.
  final pulumi.Input<String>? algorithm;
  /// The name assigned to the issued certificate.
  final pulumi.Input<String>? aliasName;
  /// The issuance time of the client certificate, in timestamp format. By default, it is set to the time when you call this API. Unit: seconds.
  ///
  /// > **NOTE:**  The `before_time` and `after_time` parameters must either both be empty or both be specified.
  final pulumi.Input<int>? beforeTime;
  /// Name of the certificate subject. For a Client Authentication (ClientAuth) certificate, the subject is typically an individual, company, organization, or application. We recommend using the common name of the subject—for example, Zhang San, Alibaba, Alibaba Cloud KMS, or Tmall Genie.
  final pulumi.Input<String>? commonName;
  /// Country code of the organization associated with the subordinate CA certificate that issued this certificate.
  /// For the meanings of different country codes, see the **International Codes** section in [Manage Company Information](https://help.aliyun.com/document_detail/198289.html).
  final pulumi.Input<String>? countryCode;
  /// A user-defined unique identifier.
  final pulumi.Input<String>? customIdentifier;
  /// Validity period of the client certificate, in days.
  ///
  /// The `days`, `before_time`, and `after_time` parameters cannot all be empty. Additionally, `before_time` and `after_time` must either both be set or both remain unset. The specific rules are as follows:
  /// - If you set the `days` parameter, you may optionally also set `before_time` and `after_time`.
  /// - If you do not set the `days` parameter, you must set both `before_time` and `after_time`.
  ///
  /// > **NOTE:** - If you set `days`, `before_time`, and `after_time` simultaneously, the validity period of the client certificate is determined by the value of `days`.
  /// - The validity period of the client certificate cannot exceed that of the issuing subordinate CA certificate. You can call [DescribeCACertificate](https://help.aliyun.com/document_detail/465954.html) to check the validity period of the subordinate CA certificate.
  final pulumi.Input<int>? days;
  /// Whether to include the CRL URL. Valid values:
  final pulumi.Input<int>? enableCrl;
  /// Specifies whether to return the digital certificate immediately. Valid values:
  final pulumi.Input<int>? immediately;
  /// The name of the city where the organization associated with the certificate is located. Chinese characters, English letters, and other characters are supported.
  /// By default, this value is the same as the city name of the organization associated with the issuing subordinate CA certificate.
  final pulumi.Input<String>? locality;
  /// The duration for which the certificate is purchased, in months.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? months;
  /// Name of the organization associated with the subordinate CA certificate that issued this certificate.
  final pulumi.Input<String>? organization;
  /// Department name. Default: Aliyun CDN.
  final pulumi.Input<String>? organizationUnit;
  /// The unique identifier of the subordinate CA certificate that issued this certificate.
  final pulumi.Input<String> parentIdentifier;
  /// The resource group ID. You can obtain this ID by calling the [ListResources](https://help.aliyun.com/document_detail/2716559.html) operation.
  final pulumi.Input<String>? resourceGroupId;
  /// The Subject Alternative Name (SAN) type supported by the client certificate. Valid values:
  final pulumi.Input<String>? sanType;
  /// Specific extension information for the client certificate. You can enter multiple extensions. If you need to specify multiple extensions, separate them with commas (,).
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? sanValue;
  /// The name of the province, municipality, or autonomous region where the certificate's organization is located. Chinese and English characters are supported. By default, this value is the same as the province, municipality, or autonomous region of the organization associated with the subordinate CA certificate that issued this certificate.
  /// The name of the state or province where the certificate's organization is located. Chinese and English characters are supported. By default, this value is the same as the state or province of the organization associated with the subordinate CA certificate that issued this certificate.
  final pulumi.Input<String>? state;
  /// The status of the certificate. Valid values:
  /// - `REVOKE`: indicates that the certificate has been revoked.
  /// > **NOTE:** If you want to destroy `alicloud.sslcertificatesservicepca.Cert`, `status` must be set to `REVOKE`
  final pulumi.Input<String>? status;
  /// Information about the queried instances and their associated tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates whether the certificate has been uploaded to the SSL certificate management platform.
  final pulumi.Input<int>? uploadFlag;
  /// The duration for which the certificate is purchased, in years.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? years;

  /// Creates a new [CertArgs].
  /// [afterTime] The service expiration time of the client certificate, specified as a Unix timestamp in seconds.
  /// [algorithm] The key algorithm of the client certificate. The key algorithm is specified in the format `_`. Valid values:
  /// [aliasName] The name assigned to the issued certificate.
  /// [beforeTime] The issuance time of the client certificate, in timestamp format. By default, it is set to the time when you call this API. Unit: seconds.
  /// [commonName] Name of the certificate subject. For a Client Authentication (ClientAuth) certificate, the subject is typically an individual, company, organization, or application. We recommend using the common name of the subject—for example, Zhang San, Alibaba, Alibaba Cloud KMS, or Tmall Genie.
  /// [countryCode] Country code of the organization associated with the subordinate CA certificate that issued this certificate.
  /// [customIdentifier] A user-defined unique identifier.
  /// [days] Validity period of the client certificate, in days.
  /// [enableCrl] Whether to include the CRL URL. Valid values:
  /// [immediately] Specifies whether to return the digital certificate immediately. Valid values:
  /// [locality] The name of the city where the organization associated with the certificate is located. Chinese characters, English letters, and other characters are supported.
  /// [months] The duration for which the certificate is purchased, in months.
  /// [organization] Name of the organization associated with the subordinate CA certificate that issued this certificate.
  /// [organizationUnit] Department name. Default: Aliyun CDN.
  /// [parentIdentifier] The unique identifier of the subordinate CA certificate that issued this certificate.
  /// [resourceGroupId] The resource group ID. You can obtain this ID by calling the [ListResources](https://help.aliyun.com/document_detail/2716559.html) operation.
  /// [sanType] The Subject Alternative Name (SAN) type supported by the client certificate. Valid values:
  /// [sanValue] Specific extension information for the client certificate. You can enter multiple extensions. If you need to specify multiple extensions, separate them with commas (,).
  /// [state] The name of the province, municipality, or autonomous region where the certificate's organization is located. Chinese and English characters are supported. By default, this value is the same as the province, municipality, or autonomous region of the organization associated with the subordinate CA certificate that issued this certificate.
  /// [status] The status of the certificate. Valid values:
  /// [tags] Information about the queried instances and their associated tags.
  /// [uploadFlag] Indicates whether the certificate has been uploaded to the SSL certificate management platform.
  /// [years] The duration for which the certificate is purchased, in years.
  CertArgs({
    pulumi.Output<int>? afterTime,
    pulumi.Output<String>? algorithm,
    pulumi.Output<String>? aliasName,
    pulumi.Output<int>? beforeTime,
    pulumi.Output<String>? commonName,
    pulumi.Output<String>? countryCode,
    pulumi.Output<String>? customIdentifier,
    pulumi.Output<int>? days,
    pulumi.Output<int>? enableCrl,
    pulumi.Output<int>? immediately,
    pulumi.Output<String>? locality,
    pulumi.Output<int>? months,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? organizationUnit,
    required pulumi.Output<String> parentIdentifier,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? sanType,
    pulumi.Output<String>? sanValue,
    pulumi.Output<String>? state,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? uploadFlag,
    pulumi.Output<int>? years,
  }) :
      afterTime = pulumi.Input.asOptionalInput<int>(afterTime),
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      aliasName = pulumi.Input.asOptionalInput<String>(aliasName),
      beforeTime = pulumi.Input.asOptionalInput<int>(beforeTime),
      commonName = pulumi.Input.asOptionalInput<String>(commonName),
      countryCode = pulumi.Input.asOptionalInput<String>(countryCode),
      customIdentifier = pulumi.Input.asOptionalInput<String>(customIdentifier),
      days = pulumi.Input.asOptionalInput<int>(days),
      enableCrl = pulumi.Input.asOptionalInput<int>(enableCrl),
      immediately = pulumi.Input.asOptionalInput<int>(immediately),
      locality = pulumi.Input.asOptionalInput<String>(locality),
      months = pulumi.Input.asOptionalInput<int>(months),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      organizationUnit = pulumi.Input.asOptionalInput<String>(organizationUnit),
      parentIdentifier = pulumi.Input.asInput<String>(parentIdentifier),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sanType = pulumi.Input.asOptionalInput<String>(sanType),
      sanValue = pulumi.Input.asOptionalInput<String>(sanValue),
      state = pulumi.Input.asOptionalInput<String>(state),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uploadFlag = pulumi.Input.asOptionalInput<int>(uploadFlag),
      years = pulumi.Input.asOptionalInput<int>(years);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterTime': ?afterTime,
      'algorithm': ?algorithm,
      'aliasName': ?aliasName,
      'beforeTime': ?beforeTime,
      'commonName': ?commonName,
      'countryCode': ?countryCode,
      'customIdentifier': ?customIdentifier,
      'days': ?days,
      'enableCrl': ?enableCrl,
      'immediately': ?immediately,
      'locality': ?locality,
      'months': ?months,
      'organization': ?organization,
      'organizationUnit': ?organizationUnit,
      'parentIdentifier': parentIdentifier,
      'resourceGroupId': ?resourceGroupId,
      'sanType': ?sanType,
      'sanValue': ?sanValue,
      'state': ?state,
      'status': ?status,
      'tags': ?tags,
      'uploadFlag': ?uploadFlag,
      'years': ?years,
    };
  }

  factory CertArgs.fromMap(Map<String, dynamic> map) {
    return CertArgs(
      afterTime: map['afterTime'] == null ? null : pulumi.Output.create<int>(map['afterTime'] as int),
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      aliasName: map['aliasName'] == null ? null : pulumi.Output.create<String>(map['aliasName'] as String),
      beforeTime: map['beforeTime'] == null ? null : pulumi.Output.create<int>(map['beforeTime'] as int),
      commonName: map['commonName'] == null ? null : pulumi.Output.create<String>(map['commonName'] as String),
      countryCode: map['countryCode'] == null ? null : pulumi.Output.create<String>(map['countryCode'] as String),
      customIdentifier: map['customIdentifier'] == null ? null : pulumi.Output.create<String>(map['customIdentifier'] as String),
      days: map['days'] == null ? null : pulumi.Output.create<int>(map['days'] as int),
      enableCrl: map['enableCrl'] == null ? null : pulumi.Output.create<int>(map['enableCrl'] as int),
      immediately: map['immediately'] == null ? null : pulumi.Output.create<int>(map['immediately'] as int),
      locality: map['locality'] == null ? null : pulumi.Output.create<String>(map['locality'] as String),
      months: map['months'] == null ? null : pulumi.Output.create<int>(map['months'] as int),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      organizationUnit: map['organizationUnit'] == null ? null : pulumi.Output.create<String>(map['organizationUnit'] as String),
      parentIdentifier: pulumi.Output.create<String>(map['parentIdentifier'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sanType: map['sanType'] == null ? null : pulumi.Output.create<String>(map['sanType'] as String),
      sanValue: map['sanValue'] == null ? null : pulumi.Output.create<String>(map['sanValue'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uploadFlag: map['uploadFlag'] == null ? null : pulumi.Output.create<int>(map['uploadFlag'] as int),
      years: map['years'] == null ? null : pulumi.Output.create<int>(map['years'] as int),
    );
  }
}

