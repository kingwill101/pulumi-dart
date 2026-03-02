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
    this.afterTime,
    this.algorithm,
    this.aliasName,
    this.beforeTime,
    this.commonName,
    this.countryCode,
    this.customIdentifier,
    this.days,
    this.enableCrl,
    this.immediately,
    this.locality,
    this.months,
    this.organization,
    this.organizationUnit,
    required this.parentIdentifier,
    this.resourceGroupId,
    this.sanType,
    this.sanValue,
    this.state,
    this.status,
    this.tags,
    this.uploadFlag,
    this.years,
  });

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
      afterTime: map['afterTime'] == null ? null : (map['afterTime'] as int).input(),
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as String).input(),
      aliasName: map['aliasName'] == null ? null : (map['aliasName'] as String).input(),
      beforeTime: map['beforeTime'] == null ? null : (map['beforeTime'] as int).input(),
      commonName: map['commonName'] == null ? null : (map['commonName'] as String).input(),
      countryCode: map['countryCode'] == null ? null : (map['countryCode'] as String).input(),
      customIdentifier: map['customIdentifier'] == null ? null : (map['customIdentifier'] as String).input(),
      days: map['days'] == null ? null : (map['days'] as int).input(),
      enableCrl: map['enableCrl'] == null ? null : (map['enableCrl'] as int).input(),
      immediately: map['immediately'] == null ? null : (map['immediately'] as int).input(),
      locality: map['locality'] == null ? null : (map['locality'] as String).input(),
      months: map['months'] == null ? null : (map['months'] as int).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
      organizationUnit: map['organizationUnit'] == null ? null : (map['organizationUnit'] as String).input(),
      parentIdentifier: (map['parentIdentifier'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sanType: map['sanType'] == null ? null : (map['sanType'] as String).input(),
      sanValue: map['sanValue'] == null ? null : (map['sanValue'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      uploadFlag: map['uploadFlag'] == null ? null : (map['uploadFlag'] as int).input(),
      years: map['years'] == null ? null : (map['years'] as int).input(),
    );
  }
}

