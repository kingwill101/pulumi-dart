// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_managed_authorization_attempt_info/certificate_managed_authorization_attempt_info.dart';
import '../certificate_managed_provisioning_issue/certificate_managed_provisioning_issue.dart';

class CertificateManaged {
  /// (Output)
  /// Detailed state of the latest authorization attempt for each domain
  /// specified for this Managed Certificate.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedManagedProvisioningIssue"" pulumi-lang-dotnet=""NestedManagedProvisioningIssue"" pulumi-lang-go=""nestedManagedProvisioningIssue"" pulumi-lang-python=""nested_managed_provisioning_issue"" pulumi-lang-yaml=""nestedManagedProvisioningIssue"" pulumi-lang-java=""nestedManagedProvisioningIssue"">"nested_managed_provisioning_issue"</span>></a>The <span pulumi-lang-nodejs="`provisioningIssue`" pulumi-lang-dotnet="`ProvisioningIssue`" pulumi-lang-go="`provisioningIssue`" pulumi-lang-python="`provisioning_issue`" pulumi-lang-yaml="`provisioningIssue`" pulumi-lang-java="`provisioningIssue`">`provisioning_issue`</span> block contains:
  final List<CertificateManagedAuthorizationAttemptInfo>?
      authorizationAttemptInfos;

  /// Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final List<String>? dnsAuthorizations;

  /// The domains for which a managed SSL certificate will be generated.
  /// Wildcard domains are only supported with DNS challenge resolution
  final List<String>? domains;

  /// The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
  /// If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  /// Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final String? issuanceConfig;

  /// (Output)
  /// Information about issues with provisioning this Managed Certificate.
  /// Structure is documented below.
  final List<CertificateManagedProvisioningIssue>? provisioningIssues;

  /// (Output)
  /// State of the domain for managed certificate issuance.
  final String? state;

  CertificateManaged({
    this.authorizationAttemptInfos,
    this.dnsAuthorizations,
    this.domains,
    this.issuanceConfig,
    this.provisioningIssues,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationAttemptInfosValue = authorizationAttemptInfos;
    if (authorizationAttemptInfosValue != null) {
      map['authorizationAttemptInfos'] = Input.encodeList<
              CertificateManagedAuthorizationAttemptInfo, Map<String, dynamic>>(
          authorizationAttemptInfosValue, (value) => value.toMap());
    }
    final dnsAuthorizationsValue = dnsAuthorizations;
    if (dnsAuthorizationsValue != null) {
      map['dnsAuthorizations'] = dnsAuthorizationsValue;
    }
    final domainsValue = domains;
    if (domainsValue != null) {
      map['domains'] = domainsValue;
    }
    final issuanceConfigValue = issuanceConfig;
    if (issuanceConfigValue != null) {
      map['issuanceConfig'] = issuanceConfigValue;
    }
    final provisioningIssuesValue = provisioningIssues;
    if (provisioningIssuesValue != null) {
      map['provisioningIssues'] = Input.encodeList<
              CertificateManagedProvisioningIssue, Map<String, dynamic>>(
          provisioningIssuesValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory CertificateManaged.fromMap(Map<String, dynamic> map) {
    return CertificateManaged(
      authorizationAttemptInfos: map['authorizationAttemptInfos'] == null
          ? null
          : Input.decodeList<CertificateManagedAuthorizationAttemptInfo>(
              map['authorizationAttemptInfos'],
              (value) => CertificateManagedAuthorizationAttemptInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dnsAuthorizations: map['dnsAuthorizations'] == null
          ? null
          : (map['dnsAuthorizations'] as List).cast<String>(),
      domains: map['domains'] == null
          ? null
          : (map['domains'] as List).cast<String>(),
      issuanceConfig: map['issuanceConfig'] == null
          ? null
          : map['issuanceConfig'] as String,
      provisioningIssues: map['provisioningIssues'] == null
          ? null
          : Input.decodeList<CertificateManagedProvisioningIssue>(
              map['provisioningIssues'],
              (value) => CertificateManagedProvisioningIssue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
