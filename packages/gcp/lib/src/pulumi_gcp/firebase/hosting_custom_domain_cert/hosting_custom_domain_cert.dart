// ignore_for_file: unused_element, unnecessary_cast

import '../hosting_custom_domain_cert_verification/hosting_custom_domain_cert_verification.dart';

class HostingCustomDomainCert {
  /// The state of the certificate. Only the `CERT_ACTIVE` and
  /// `CERT_EXPIRING_SOON` states provide SSL coverage for a domain name. If the
  /// state is `PROPAGATING` and Hosting had an active cert for the domain name
  /// before, that formerly-active cert provides SSL coverage for the domain name
  /// until the current cert propagates.
  final String? state;

  /// The record's type, which determines what data the record contains.
  final String? type;

  /// A set of ACME challenges you can add to your DNS records or existing,
  /// non-Hosting hosting provider to allow Hosting to create an SSL certificate
  /// for your domain name before you point traffic toward hosting. You can use
  /// thse challenges as part of a zero downtime transition from your old
  /// provider to Hosting.
  /// Structure is documented below.
  final HostingCustomDomainCertVerification? verification;

  HostingCustomDomainCert({
    this.state,
    this.type,
    this.verification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final verificationValue = verification;
    if (verificationValue != null) {
      map['verification'] = verificationValue.toMap();
    }
    return map;
  }

  factory HostingCustomDomainCert.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCert(
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      verification: map['verification'] == null
          ? null
          : HostingCustomDomainCertVerification.fromMap(
              (map['verification'] as Map).cast<String, dynamic>()),
    );
  }
}
