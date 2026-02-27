// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../hosting_custom_domain_required_dns_update_desired/hosting_custom_domain_required_dns_update_desired.dart';
import '../hosting_custom_domain_required_dns_update_discovered/hosting_custom_domain_required_dns_update_discovered.dart';

class HostingCustomDomainRequiredDnsUpdate {
  /// (Output)
  /// The last time Hosting checked your CustomDomain's DNS records.
  final String? checkTime;

  /// A text string to serve at the path.
  final List<HostingCustomDomainRequiredDnsUpdateDesired>? desireds;

  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  final List<HostingCustomDomainRequiredDnsUpdateDiscovered>? discovereds;

  HostingCustomDomainRequiredDnsUpdate({
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
          HostingCustomDomainRequiredDnsUpdateDesired,
          Map<String, dynamic>>(desiredsValue, (value) => value.toMap());
    }
    final discoveredsValue = discovereds;
    if (discoveredsValue != null) {
      map['discovereds'] = pulumi.Input.encodeList<
          HostingCustomDomainRequiredDnsUpdateDiscovered,
          Map<String, dynamic>>(discoveredsValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostingCustomDomainRequiredDnsUpdate.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainRequiredDnsUpdate(
      checkTime: map['checkTime'] == null ? null : map['checkTime'] as String,
      desireds: map['desireds'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainRequiredDnsUpdateDesired>(
              map['desireds'],
              (value) => HostingCustomDomainRequiredDnsUpdateDesired.fromMap(
                  (value as Map).cast<String, dynamic>())),
      discovereds: map['discovereds'] == null
          ? null
          : pulumi.Input.decodeList<
                  HostingCustomDomainRequiredDnsUpdateDiscovered>(
              map['discovereds'],
              (value) => HostingCustomDomainRequiredDnsUpdateDiscovered.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
