// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification_dns_discovered_record.dart';

class HostingCustomDomainCertVerificationDnsDiscovered {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  /// Records on the domain
  /// Structure is documented below.
  final List<HostingCustomDomainCertVerificationDnsDiscoveredRecord>? records;

  /// Creates a new [HostingCustomDomainCertVerificationDnsDiscovered].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainCertVerificationDnsDiscovered({
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final recordsValue = records;
    if (recordsValue != null) {
      map['records'] = pulumi.Input.encodeList<
          HostingCustomDomainCertVerificationDnsDiscoveredRecord,
          Map<String, dynamic>>(recordsValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostingCustomDomainCertVerificationDnsDiscovered.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDnsDiscovered(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      records: map['records'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainCertVerificationDnsDiscoveredRecord>(
              map['records'],
              (value) => HostingCustomDomainCertVerificationDnsDiscoveredRecord
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
