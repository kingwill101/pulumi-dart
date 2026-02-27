// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_certificates_certificate_managed_authorization_attempt_info/get_certificates_certificate_managed_authorization_attempt_info.dart';
import '../get_certificates_certificate_managed_provisioning_issue/get_certificates_certificate_managed_provisioning_issue.dart';

class GetCertificatesCertificateManaged {
  /// Detailed state of the latest authorization attempt for each domain
  /// specified for this Managed Certificate.
  final List<GetCertificatesCertificateManagedAuthorizationAttemptInfo>
      authorizationAttemptInfos;

  /// Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final List<String> dnsAuthorizations;

  /// The domains for which a managed SSL certificate will be generated.
  /// Wildcard domains are only supported with DNS challenge resolution
  final List<String> domains;

  /// The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
  /// If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  /// Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final String issuanceConfig;

  /// Information about issues with provisioning this Managed Certificate.
  final List<GetCertificatesCertificateManagedProvisioningIssue>
      provisioningIssues;

  /// A state of this Managed Certificate.
  final String state;

  GetCertificatesCertificateManaged({
    required this.authorizationAttemptInfos,
    required this.dnsAuthorizations,
    required this.domains,
    required this.issuanceConfig,
    required this.provisioningIssues,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationAttemptInfos'] = pulumi.Input.encodeList<
            GetCertificatesCertificateManagedAuthorizationAttemptInfo,
            Map<String, dynamic>>(
        authorizationAttemptInfos, (value) => value.toMap());
    map['dnsAuthorizations'] = dnsAuthorizations;
    map['domains'] = domains;
    map['issuanceConfig'] = issuanceConfig;
    map['provisioningIssues'] = pulumi.Input.encodeList<
        GetCertificatesCertificateManagedProvisioningIssue,
        Map<String, dynamic>>(provisioningIssues, (value) => value.toMap());
    map['state'] = state;
    return map;
  }

  factory GetCertificatesCertificateManaged.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificateManaged(
      authorizationAttemptInfos: pulumi.Input.decodeList<
              GetCertificatesCertificateManagedAuthorizationAttemptInfo>(
          map['authorizationAttemptInfos'],
          (value) =>
              GetCertificatesCertificateManagedAuthorizationAttemptInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dnsAuthorizations: (map['dnsAuthorizations'] as List).cast<String>(),
      domains: (map['domains'] as List).cast<String>(),
      issuanceConfig: map['issuanceConfig'] as String,
      provisioningIssues: pulumi.Input.decodeList<
              GetCertificatesCertificateManagedProvisioningIssue>(
          map['provisioningIssues'],
          (value) => GetCertificatesCertificateManagedProvisioningIssue.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}
