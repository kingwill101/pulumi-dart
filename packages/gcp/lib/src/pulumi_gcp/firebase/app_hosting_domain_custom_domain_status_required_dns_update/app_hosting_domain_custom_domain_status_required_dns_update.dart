// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_domain_custom_domain_status_required_dns_update_desired/app_hosting_domain_custom_domain_status_required_dns_update_desired.dart';
import '../app_hosting_domain_custom_domain_status_required_dns_update_discovered/app_hosting_domain_custom_domain_status_required_dns_update_discovered.dart';

class AppHostingDomainCustomDomainStatusRequiredDnsUpdate {
  /// (Output)
  /// The last time App Hosting checked your custom domain's DNS records.
  final String? checkTime;

  /// (Output)
  /// The set of DNS records App Hosting needs in order to be able to serve
  /// secure content on the domain.
  /// Structure is documented below.
  final List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired>?
      desireds;

  /// (Output)
  /// The set of DNS records App Hosting discovered when inspecting a domain.
  /// Structure is documented below.
  final List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered>?
      discovereds;

  /// (Output)
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  AppHostingDomainCustomDomainStatusRequiredDnsUpdate({
    this.checkTime,
    this.desireds,
    this.discovereds,
    this.domainName,
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
          AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired,
          Map<String, dynamic>>(desiredsValue, (value) => value.toMap());
    }
    final discoveredsValue = discovereds;
    if (discoveredsValue != null) {
      map['discovereds'] = pulumi.Input.encodeList<
          AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered,
          Map<String, dynamic>>(discoveredsValue, (value) => value.toMap());
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    return map;
  }

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdate.fromMap(
      Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdate(
      checkTime: map['checkTime'] == null ? null : map['checkTime'] as String,
      desireds: map['desireds'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired>(
              map['desireds'],
              (value) =>
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired
                      .fromMap((value as Map).cast<String, dynamic>())),
      discovereds: map['discovereds'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered>(
              map['discovereds'],
              (value) =>
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered
                      .fromMap((value as Map).cast<String, dynamic>())),
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
    );
  }
}
