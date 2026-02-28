// ignore_for_file: unused_element, unnecessary_cast

import 'dns_updates_response.dart';
import 'http_update_response.dart';

/// A set of ACME challenges you can use to allow Hosting to create an SSL certificate for your domain name before directing traffic to Hosting servers. Use either the DNS or HTTP challenge; it's not necessary to provide both.
class CertVerificationResponse {
  /// A `TXT` record to add to your DNS records that confirms your intent to let Hosting create an SSL cert for your domain name.
  final DnsUpdatesResponse dns;

  /// A file to add to your existing, non-Hosting hosting service that confirms your intent to let Hosting create an SSL cert for your domain name.
  final HttpUpdateResponse http;

  /// Creates a new [CertVerificationResponse].
  /// [dns] A `TXT` record to add to your DNS records that confirms your intent to let Hosting create an SSL cert for your domain name.
  /// [http] A file to add to your existing, non-Hosting hosting service that confirms your intent to let Hosting create an SSL cert for your domain name.
  CertVerificationResponse({
    required this.dns,
    required this.http,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dns'] = dns.toMap();
    map['http'] = http.toMap();
    return map;
  }

  factory CertVerificationResponse.fromMap(Map<String, dynamic> map) {
    return CertVerificationResponse(
      dns: DnsUpdatesResponse.fromMap(
          (map['dns'] as Map).cast<String, dynamic>()),
      http: HttpUpdateResponse.fromMap(
          (map['http'] as Map).cast<String, dynamic>()),
    );
  }
}
