// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ds_record_response2.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsResponse2 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final List<DsRecordResponse2> dsRecords;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  CustomDnsResponse2({
    required this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dsRecords'] =
        Input.encodeList<DsRecordResponse2, Map<String, dynamic>>(
            dsRecords, (value) => value.toMap());
    map['nameServers'] = nameServers;
    return map;
  }

  factory CustomDnsResponse2.fromMap(Map<String, dynamic> map) {
    return CustomDnsResponse2(
      dsRecords: Input.decodeList<DsRecordResponse2>(
          map['dsRecords'],
          (value) => DsRecordResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
