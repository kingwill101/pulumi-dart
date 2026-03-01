// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_status_enum_value_response.dart';
import 'certificate_type_enum_value_response.dart';
import 'key_algorithm_enum_value_response.dart';
import 'renewal_eligibility_enum_value_response.dart';

/// Definition of awsAcmCertificateSummary
class AwsAcmCertificateSummaryPropertiesResponse {
  /// <p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href='https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html'>Amazon Resource Names (ARNs)</a>.</p>
  final String? certificateArn;
  /// <p>The time at which the certificate was requested.</p>
  final String? createdAt;
  /// <p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.</p>
  final String? domainName;
  /// <p>Indicates whether the certificate has been exported. This value exists only when the certificate type is <code>PRIVATE</code>.</p>
  final bool? exported;
  /// <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). </p>
  final List<String>? extendedKeyUsages;
  /// <p>When called by <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'>ListCertificates</a>, indicates whether the full list of subject alternative names has been included in the response. If false, the response includes all of the subject alternative names included in the certificate. If true, the response only includes the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'>DescribeCertificate</a>.</p>
  final bool? hasAdditionalSubjectAlternativeNames;
  /// <p>The date and time when the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>. </p>
  final String? importedAt;
  /// <p>Indicates whether the certificate is currently in use by any Amazon Web Services resources.</p>
  final bool? inUse;
  /// <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>
  final String? issuedAt;
  /// <p>The algorithm that was used to generate the public-private key pair.</p>
  final KeyAlgorithmEnumValueResponse? keyAlgorithm;
  /// <p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>
  final List<String>? keyUsages;
  /// <p>The time after which the certificate is not valid.</p>
  final String? notAfter;
  /// <p>The time before which the certificate is not valid.</p>
  final String? notBefore;
  /// <p>Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the <a>RenewCertificate</a> command.</p>
  final RenewalEligibilityEnumValueResponse? renewalEligibility;
  /// <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>
  final String? revokedAt;
  /// <p>The status of the certificate.</p> <p>A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic <a href='https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html'>Certificate request fails</a>. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with <a href='https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html'>DNS validation</a> or <a href='https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html'>Email validation</a>, and try again. If validation succeeds, the certificate enters status ISSUED. </p>
  final CertificateStatusEnumValueResponse? status;
  /// <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p> <p>When called by <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'>ListCertificates</a>, this parameter will only return the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'>DescribeCertificate</a>.</p>
  final List<String>? subjectAlternativeNameSummaries;
  /// <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href='https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html'>managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href='https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html'>Importing Certificates</a> in the <i>Certificate Manager User Guide</i>. </p>
  final CertificateTypeEnumValueResponse? type;

  /// Creates a new [AwsAcmCertificateSummaryPropertiesResponse].
  /// [certificateArn] <p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href='https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html'>Amazon Resource Names (ARNs)</a>.</p>
  /// [createdAt] <p>The time at which the certificate was requested.</p>
  /// [domainName] <p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.</p>
  /// [exported] <p>Indicates whether the certificate has been exported. This value exists only when the certificate type is <code>PRIVATE</code>.</p>
  /// [extendedKeyUsages] <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). </p>
  /// [hasAdditionalSubjectAlternativeNames] <p>When called by <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'>ListCertificates</a>, indicates whether the full list of subject alternative names has been included in the response. If false, the response includes all of the subject alternative names included in the certificate. If true, the response only includes the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'>DescribeCertificate</a>.</p>
  /// [importedAt] <p>The date and time when the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>. </p>
  /// [inUse] <p>Indicates whether the certificate is currently in use by any Amazon Web Services resources.</p>
  /// [issuedAt] <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>
  /// [keyAlgorithm] <p>The algorithm that was used to generate the public-private key pair.</p>
  /// [keyUsages] <p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>
  /// [notAfter] <p>The time after which the certificate is not valid.</p>
  /// [notBefore] <p>The time before which the certificate is not valid.</p>
  /// [renewalEligibility] <p>Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the <a>RenewCertificate</a> command.</p>
  /// [revokedAt] <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>
  /// [status] <p>The status of the certificate.</p> <p>A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic <a href='https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html'>Certificate request fails</a>. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with <a href='https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html'>DNS validation</a> or <a href='https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html'>Email validation</a>, and try again. If validation succeeds, the certificate enters status ISSUED. </p>
  /// [subjectAlternativeNameSummaries] <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p> <p>When called by <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'>ListCertificates</a>, this parameter will only return the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'>DescribeCertificate</a>.</p>
  /// [type] <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href='https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html'>managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href='https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html'>Importing Certificates</a> in the <i>Certificate Manager User Guide</i>. </p>
  AwsAcmCertificateSummaryPropertiesResponse({
    this.certificateArn,
    this.createdAt,
    this.domainName,
    this.exported,
    this.extendedKeyUsages,
    this.hasAdditionalSubjectAlternativeNames,
    this.importedAt,
    this.inUse,
    this.issuedAt,
    this.keyAlgorithm,
    this.keyUsages,
    this.notAfter,
    this.notBefore,
    this.renewalEligibility,
    this.revokedAt,
    this.status,
    this.subjectAlternativeNameSummaries,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'createdAt': ?createdAt,
      'domainName': ?domainName,
      'exported': ?exported,
      'extendedKeyUsages': ?extendedKeyUsages,
      'hasAdditionalSubjectAlternativeNames': ?hasAdditionalSubjectAlternativeNames,
      'importedAt': ?importedAt,
      'inUse': ?inUse,
      'issuedAt': ?issuedAt,
      'keyAlgorithm': ?keyAlgorithm == null ? null : keyAlgorithm!.toMap(),
      'keyUsages': ?keyUsages,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'renewalEligibility': ?renewalEligibility == null ? null : renewalEligibility!.toMap(),
      'revokedAt': ?revokedAt,
      'status': ?status == null ? null : status!.toMap(),
      'subjectAlternativeNameSummaries': ?subjectAlternativeNameSummaries,
      'type': ?type == null ? null : type!.toMap(),
    };
  }

  factory AwsAcmCertificateSummaryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsAcmCertificateSummaryPropertiesResponse(
      certificateArn: map['certificateArn'] == null ? null : map['certificateArn'] as String,
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      exported: map['exported'] == null ? null : map['exported'] as bool,
      extendedKeyUsages: map['extendedKeyUsages'] == null ? null : (map['extendedKeyUsages'] as List).cast<String>(),
      hasAdditionalSubjectAlternativeNames: map['hasAdditionalSubjectAlternativeNames'] == null ? null : map['hasAdditionalSubjectAlternativeNames'] as bool,
      importedAt: map['importedAt'] == null ? null : map['importedAt'] as String,
      inUse: map['inUse'] == null ? null : map['inUse'] as bool,
      issuedAt: map['issuedAt'] == null ? null : map['issuedAt'] as String,
      keyAlgorithm: map['keyAlgorithm'] == null ? null : KeyAlgorithmEnumValueResponse.fromMap((map['keyAlgorithm'] as Map).cast<String, dynamic>()),
      keyUsages: map['keyUsages'] == null ? null : (map['keyUsages'] as List).cast<String>(),
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as String,
      renewalEligibility: map['renewalEligibility'] == null ? null : RenewalEligibilityEnumValueResponse.fromMap((map['renewalEligibility'] as Map).cast<String, dynamic>()),
      revokedAt: map['revokedAt'] == null ? null : map['revokedAt'] as String,
      status: map['status'] == null ? null : CertificateStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      subjectAlternativeNameSummaries: map['subjectAlternativeNameSummaries'] == null ? null : (map['subjectAlternativeNameSummaries'] as List).cast<String>(),
      type: map['type'] == null ? null : CertificateTypeEnumValueResponse.fromMap((map['type'] as Map).cast<String, dynamic>()),
    );
  }
}

