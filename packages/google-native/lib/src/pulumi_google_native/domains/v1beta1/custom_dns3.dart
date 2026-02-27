// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ds_record3.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDns3 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final List<DsRecord3>? dsRecords;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  CustomDns3({
    this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dsRecordsValue = dsRecords;
    if (dsRecordsValue != null) {
      map['dsRecords'] = Input.encodeList<DsRecord3, Map<String, dynamic>>(
          dsRecordsValue, (value) => value.toMap());
    }
    map['nameServers'] = nameServers;
    return map;
  }

  factory CustomDns3.fromMap(Map<String, dynamic> map) {
    return CustomDns3(
      dsRecords: map['dsRecords'] == null
          ? null
          : Input.decodeList<DsRecord3>(
              map['dsRecords'],
              (value) =>
                  DsRecord3.fromMap((value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
