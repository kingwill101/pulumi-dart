// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_required_dns_update_discovered_record.dart';

class HostingCustomDomainRequiredDnsUpdateDiscovered {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  /// Records on the domain
  /// Structure is documented below.
  final List<HostingCustomDomainRequiredDnsUpdateDiscoveredRecord>? records;

  /// Creates a new [HostingCustomDomainRequiredDnsUpdateDiscovered].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainRequiredDnsUpdateDiscovered({
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
          HostingCustomDomainRequiredDnsUpdateDiscoveredRecord,
          Map<String, dynamic>>(recordsValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostingCustomDomainRequiredDnsUpdateDiscovered.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainRequiredDnsUpdateDiscovered(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      records: map['records'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainRequiredDnsUpdateDiscoveredRecord>(
              map['records'],
              (value) =>
                  HostingCustomDomainRequiredDnsUpdateDiscoveredRecord.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
