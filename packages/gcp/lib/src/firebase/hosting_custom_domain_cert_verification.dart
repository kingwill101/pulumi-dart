// ignore_for_file: unused_element, unnecessary_cast

import 'hosting_custom_domain_cert_verification_dns.dart';
import 'hosting_custom_domain_cert_verification_http.dart';

class HostingCustomDomainCertVerification {
  /// A `TXT` record to add to your DNS records that confirms your intent to
  /// let Hosting create an SSL cert for your domain name.
  /// Structure is documented below.
  final HostingCustomDomainCertVerificationDns? dns;

  /// A file to add to your existing, non-Hosting hosting service that confirms
  /// your intent to let Hosting create an SSL cert for your domain name.
  /// Structure is documented below.
  final HostingCustomDomainCertVerificationHttp? http;

  /// Creates a new [HostingCustomDomainCertVerification].
  /// [dns] A `TXT` record to add to your DNS records that confirms your intent to
  /// [http] A file to add to your existing, non-Hosting hosting service that confirms
  HostingCustomDomainCertVerification({this.dns, this.http});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': ?dns == null ? null : dns!.toMap(),
      'http': ?http == null ? null : http!.toMap(),
    };
  }

  factory HostingCustomDomainCertVerification.fromMap(
    Map<String, dynamic> map,
  ) {
    return HostingCustomDomainCertVerification(
      dns: map['dns'] == null
          ? null
          : HostingCustomDomainCertVerificationDns.fromMap(
              (map['dns'] as Map).cast<String, dynamic>(),
            ),
      http: map['http'] == null
          ? null
          : HostingCustomDomainCertVerificationHttp.fromMap(
              (map['http'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
