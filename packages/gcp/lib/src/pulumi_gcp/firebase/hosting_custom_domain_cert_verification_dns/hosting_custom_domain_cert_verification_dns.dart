// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../hosting_custom_domain_cert_verification_dns_desired/hosting_custom_domain_cert_verification_dns_desired.dart';
import '../hosting_custom_domain_cert_verification_dns_discovered/hosting_custom_domain_cert_verification_dns_discovered.dart';

class HostingCustomDomainCertVerificationDns {
  /// (Output)
  /// The last time Hosting checked your CustomDomain's DNS records.
  final String? checkTime;

  /// A text string to serve at the path.
  final List<HostingCustomDomainCertVerificationDnsDesired>? desireds;

  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  final List<HostingCustomDomainCertVerificationDnsDiscovered>? discovereds;

  HostingCustomDomainCertVerificationDns({
    this.checkTime,
    this.desireds,
    this.discovereds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkTimeValue = checkTime;
    if (checkTimeValue != null) {
      map['checkTime'] = checkTimeValue;
    }
    final desiredsValue = desireds;
    if (desiredsValue != null) {
      map['desireds'] = pulumi.Input.encodeList<
          HostingCustomDomainCertVerificationDnsDesired,
          Map<String, dynamic>>(desiredsValue, (value) => value.toMap());
    }
    final discoveredsValue = discovereds;
    if (discoveredsValue != null) {
      map['discovereds'] = pulumi.Input.encodeList<
          HostingCustomDomainCertVerificationDnsDiscovered,
          Map<String, dynamic>>(discoveredsValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostingCustomDomainCertVerificationDns.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDns(
      checkTime: map['checkTime'] == null ? null : map['checkTime'] as String,
      desireds: map['desireds'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainCertVerificationDnsDesired>(
              map['desireds'],
              (value) => HostingCustomDomainCertVerificationDnsDesired.fromMap(
                  (value as Map).cast<String, dynamic>())),
      discovereds: map['discovereds'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainCertVerificationDnsDiscovered>(
              map['discovereds'],
              (value) =>
                  HostingCustomDomainCertVerificationDnsDiscovered.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
