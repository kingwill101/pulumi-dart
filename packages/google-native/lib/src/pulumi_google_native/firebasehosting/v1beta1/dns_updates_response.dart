// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dns_record_set_response.dart';

/// A set of DNS record updates that you should make to allow Hosting to serve secure content in response to requests against your domain name. These updates present the current state of your domain name's DNS records when Hosting last queried them, and the desired set of records that Hosting needs to see before your custom domain can be fully active.
class DnsUpdatesResponse {
  /// The last time Hosting checked your custom domain's DNS records.
  final String checkTime;

  /// The set of DNS records Hosting needs to serve secure content on the domain.
  final List<DnsRecordSetResponse> desired;

  /// The set of DNS records Hosting discovered when inspecting a domain.
  final List<DnsRecordSetResponse> discovered;

  DnsUpdatesResponse({
    required this.checkTime,
    required this.desired,
    required this.discovered,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkTime'] = checkTime;
    map['desired'] =
        Input.encodeList<DnsRecordSetResponse, Map<String, dynamic>>(
            desired, (value) => value.toMap());
    map['discovered'] =
        Input.encodeList<DnsRecordSetResponse, Map<String, dynamic>>(
            discovered, (value) => value.toMap());
    return map;
  }

  factory DnsUpdatesResponse.fromMap(Map<String, dynamic> map) {
    return DnsUpdatesResponse(
      checkTime: map['checkTime'] as String,
      desired: Input.decodeList<DnsRecordSetResponse>(
          map['desired'],
          (value) => DnsRecordSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      discovered: Input.decodeList<DnsRecordSetResponse>(
          map['discovered'],
          (value) => DnsRecordSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
