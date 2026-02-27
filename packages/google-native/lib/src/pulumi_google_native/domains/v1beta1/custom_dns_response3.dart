// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ds_record_response3.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsResponse3 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final List<DsRecordResponse3> dsRecords;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  CustomDnsResponse3({
    required this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dsRecords'] =
        Input.encodeList<DsRecordResponse3, Map<String, dynamic>>(
            dsRecords, (value) => value.toMap());
    map['nameServers'] = nameServers;
    return map;
  }

  factory CustomDnsResponse3.fromMap(Map<String, dynamic> map) {
    return CustomDnsResponse3(
      dsRecords: Input.decodeList<DsRecordResponse3>(
          map['dsRecords'],
          (value) => DsRecordResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
