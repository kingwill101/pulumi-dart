// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification_dns_desired_record.dart';

class HostingCustomDomainCertVerificationDnsDesired {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  /// Records on the domain
  /// Structure is documented below.
  final List<HostingCustomDomainCertVerificationDnsDesiredRecord>? records;

  /// Creates a new [HostingCustomDomainCertVerificationDnsDesired].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [records] Records on the domain
  HostingCustomDomainCertVerificationDnsDesired({
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
          HostingCustomDomainCertVerificationDnsDesiredRecord,
          Map<String, dynamic>>(recordsValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostingCustomDomainCertVerificationDnsDesired.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDnsDesired(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      records: map['records'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainCertVerificationDnsDesiredRecord>(
              map['records'],
              (value) =>
                  HostingCustomDomainCertVerificationDnsDesiredRecord.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
