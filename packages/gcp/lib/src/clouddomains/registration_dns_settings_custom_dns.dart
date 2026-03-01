// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_dns_settings_custom_dns_ds_record.dart';

class RegistrationDnsSettingsCustomDns {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide
  /// the values to set here. If this field is empty, DNSSEC is disabled.
  /// Structure is documented below.
  final List<RegistrationDnsSettingsCustomDnsDsRecord>? dsRecords;

  /// Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain
  /// name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  /// Creates a new [RegistrationDnsSettingsCustomDns].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide
  /// [nameServers] Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain
  RegistrationDnsSettingsCustomDns({this.dsRecords, required this.nameServers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords': ?dsRecords == null
          ? null
          : pulumi.Input.encodeList<
              RegistrationDnsSettingsCustomDnsDsRecord,
              Map<String, dynamic>
            >(dsRecords!, (value) => value.toMap()),
      'nameServers': nameServers,
    };
  }

  factory RegistrationDnsSettingsCustomDns.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettingsCustomDns(
      dsRecords: map['dsRecords'] == null
          ? null
          : pulumi.Input.decodeList<RegistrationDnsSettingsCustomDnsDsRecord>(
              map['dsRecords'],
              (value) => RegistrationDnsSettingsCustomDnsDsRecord.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
