// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_status_enum_value_response.dart';
import 'certificate_type_enum_value_response.dart';
import 'key_algorithm_enum_value_response.dart';
import 'renewal_eligibility_enum_value_response.dart';

/// Definition of awsAcmCertificateSummary
class AwsAcmCertificateSummaryPropertiesResponse {
  /// &lt;p&gt;Amazon Resource Name (ARN) of the certificate. This is of the form:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href='https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html'&gt;Amazon Resource Names (ARNs)&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? certificateArn;
  /// &lt;p&gt;The time at which the certificate was requested.&lt;/p&gt;
  final pulumi.Input<String>? createdAt;
  /// &lt;p&gt;Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.&lt;/p&gt;
  final pulumi.Input<String>? domainName;
  /// &lt;p&gt;Indicates whether the certificate has been exported. This value exists only when the certificate type is &lt;code&gt;PRIVATE&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<bool>? exported;
  /// &lt;p&gt;Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). &lt;/p&gt;
  final pulumi.Input<List<String>>? extendedKeyUsages;
  /// &lt;p&gt;When called by &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'&gt;ListCertificates&lt;/a&gt;, indicates whether the full list of subject alternative names has been included in the response. If false, the response includes all of the subject alternative names included in the certificate. If true, the response only includes the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'&gt;DescribeCertificate&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<bool>? hasAdditionalSubjectAlternativeNames;
  /// &lt;p&gt;The date and time when the certificate was imported. This value exists only when the certificate type is &lt;code&gt;IMPORTED&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String>? importedAt;
  /// &lt;p&gt;Indicates whether the certificate is currently in use by any Amazon Web Services resources.&lt;/p&gt;
  final pulumi.Input<bool>? inUse;
  /// &lt;p&gt;The time at which the certificate was issued. This value exists only when the certificate type is &lt;code&gt;AMAZON_ISSUED&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String>? issuedAt;
  /// &lt;p&gt;The algorithm that was used to generate the public-private key pair.&lt;/p&gt;
  final pulumi.Input<KeyAlgorithmEnumValueResponse>? keyAlgorithm;
  /// &lt;p&gt;A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.&lt;/p&gt;
  final pulumi.Input<List<String>>? keyUsages;
  /// &lt;p&gt;The time after which the certificate is not valid.&lt;/p&gt;
  final pulumi.Input<String>? notAfter;
  /// &lt;p&gt;The time before which the certificate is not valid.&lt;/p&gt;
  final pulumi.Input<String>? notBefore;
  /// &lt;p&gt;Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the &lt;a&gt;RenewCertificate&lt;/a&gt; command.&lt;/p&gt;
  final pulumi.Input<RenewalEligibilityEnumValueResponse>? renewalEligibility;
  /// &lt;p&gt;The time at which the certificate was revoked. This value exists only when the certificate status is &lt;code&gt;REVOKED&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String>? revokedAt;
  /// &lt;p&gt;The status of the certificate.&lt;/p&gt; &lt;p&gt;A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html'&gt;Certificate request fails&lt;/a&gt;. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html'&gt;DNS validation&lt;/a&gt; or &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html'&gt;Email validation&lt;/a&gt;, and try again. If validation succeeds, the certificate enters status ISSUED. &lt;/p&gt;
  final pulumi.Input<CertificateStatusEnumValueResponse>? status;
  /// &lt;p&gt;One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. &lt;/p&gt; &lt;p&gt;When called by &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'&gt;ListCertificates&lt;/a&gt;, this parameter will only return the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'&gt;DescribeCertificate&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<List<String>>? subjectAlternativeNameSummaries;
  /// &lt;p&gt;The source of the certificate. For certificates provided by ACM, this value is &lt;code&gt;AMAZON_ISSUED&lt;/code&gt;. For certificates that you imported with &lt;a&gt;ImportCertificate&lt;/a&gt;, this value is &lt;code&gt;IMPORTED&lt;/code&gt;. ACM does not provide &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html'&gt;managed renewal&lt;/a&gt; for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html'&gt;Importing Certificates&lt;/a&gt; in the &lt;i&gt;Certificate Manager User Guide&lt;/i&gt;. &lt;/p&gt;
  final pulumi.Input<CertificateTypeEnumValueResponse>? type;

  /// Creates a new [AwsAcmCertificateSummaryPropertiesResponse].
  /// [certificateArn] &lt;p&gt;Amazon Resource Name (ARN) of the certificate. This is of the form:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href='https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html'&gt;Amazon Resource Names (ARNs)&lt;/a&gt;.&lt;/p&gt;
  /// [createdAt] &lt;p&gt;The time at which the certificate was requested.&lt;/p&gt;
  /// [domainName] &lt;p&gt;Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.&lt;/p&gt;
  /// [exported] &lt;p&gt;Indicates whether the certificate has been exported. This value exists only when the certificate type is &lt;code&gt;PRIVATE&lt;/code&gt;.&lt;/p&gt;
  /// [extendedKeyUsages] &lt;p&gt;Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). &lt;/p&gt;
  /// [hasAdditionalSubjectAlternativeNames] &lt;p&gt;When called by &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'&gt;ListCertificates&lt;/a&gt;, indicates whether the full list of subject alternative names has been included in the response. If false, the response includes all of the subject alternative names included in the certificate. If true, the response only includes the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'&gt;DescribeCertificate&lt;/a&gt;.&lt;/p&gt;
  /// [importedAt] &lt;p&gt;The date and time when the certificate was imported. This value exists only when the certificate type is &lt;code&gt;IMPORTED&lt;/code&gt;. &lt;/p&gt;
  /// [inUse] &lt;p&gt;Indicates whether the certificate is currently in use by any Amazon Web Services resources.&lt;/p&gt;
  /// [issuedAt] &lt;p&gt;The time at which the certificate was issued. This value exists only when the certificate type is &lt;code&gt;AMAZON_ISSUED&lt;/code&gt;. &lt;/p&gt;
  /// [keyAlgorithm] &lt;p&gt;The algorithm that was used to generate the public-private key pair.&lt;/p&gt;
  /// [keyUsages] &lt;p&gt;A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.&lt;/p&gt;
  /// [notAfter] &lt;p&gt;The time after which the certificate is not valid.&lt;/p&gt;
  /// [notBefore] &lt;p&gt;The time before which the certificate is not valid.&lt;/p&gt;
  /// [renewalEligibility] &lt;p&gt;Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the &lt;a&gt;RenewCertificate&lt;/a&gt; command.&lt;/p&gt;
  /// [revokedAt] &lt;p&gt;The time at which the certificate was revoked. This value exists only when the certificate status is &lt;code&gt;REVOKED&lt;/code&gt;. &lt;/p&gt;
  /// [status] &lt;p&gt;The status of the certificate.&lt;/p&gt; &lt;p&gt;A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html'&gt;Certificate request fails&lt;/a&gt;. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html'&gt;DNS validation&lt;/a&gt; or &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html'&gt;Email validation&lt;/a&gt;, and try again. If validation succeeds, the certificate enters status ISSUED. &lt;/p&gt;
  /// [subjectAlternativeNameSummaries] &lt;p&gt;One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. &lt;/p&gt; &lt;p&gt;When called by &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html'&gt;ListCertificates&lt;/a&gt;, this parameter will only return the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use &lt;a href='https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html'&gt;DescribeCertificate&lt;/a&gt;.&lt;/p&gt;
  /// [type] &lt;p&gt;The source of the certificate. For certificates provided by ACM, this value is &lt;code&gt;AMAZON_ISSUED&lt;/code&gt;. For certificates that you imported with &lt;a&gt;ImportCertificate&lt;/a&gt;, this value is &lt;code&gt;IMPORTED&lt;/code&gt;. ACM does not provide &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html'&gt;managed renewal&lt;/a&gt; for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see &lt;a href='https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html'&gt;Importing Certificates&lt;/a&gt; in the &lt;i&gt;Certificate Manager User Guide&lt;/i&gt;. &lt;/p&gt;
  const AwsAcmCertificateSummaryPropertiesResponse({
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
      'keyAlgorithm': ?pulumi.Input.mapOptionalInputValue<KeyAlgorithmEnumValueResponse, Map<String, dynamic>>(keyAlgorithm, (value) => value.toMap()),
      'keyUsages': ?keyUsages,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'renewalEligibility': ?pulumi.Input.mapOptionalInputValue<RenewalEligibilityEnumValueResponse, Map<String, dynamic>>(renewalEligibility, (value) => value.toMap()),
      'revokedAt': ?revokedAt,
      'status': ?pulumi.Input.mapOptionalInputValue<CertificateStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'subjectAlternativeNameSummaries': ?subjectAlternativeNameSummaries,
      'type': ?pulumi.Input.mapOptionalInputValue<CertificateTypeEnumValueResponse, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory AwsAcmCertificateSummaryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsAcmCertificateSummaryPropertiesResponse(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exported: (() { final guardedValue = map['exported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedKeyUsages: (() { final guardedValue = map['extendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hasAdditionalSubjectAlternativeNames: (() { final guardedValue = map['hasAdditionalSubjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importedAt: (() { final guardedValue = map['importedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inUse: (() { final guardedValue = map['inUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      issuedAt: (() { final guardedValue = map['issuedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyAlgorithmEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyUsages: (() { final guardedValue = map['keyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalEligibility: (() { final guardedValue = map['renewalEligibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RenewalEligibilityEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revokedAt: (() { final guardedValue = map['revokedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjectAlternativeNameSummaries: (() { final guardedValue = map['subjectAlternativeNameSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

