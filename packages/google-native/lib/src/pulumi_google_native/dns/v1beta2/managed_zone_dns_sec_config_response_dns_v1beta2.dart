// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec_response_dns_v1beta2.dart';

class ManagedZoneDnsSecConfigResponseDnsV1beta2 {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final List<DnsKeySpecResponseDnsV1beta2> defaultKeySpecs;
  final String kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final String nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final String state;

  ManagedZoneDnsSecConfigResponseDnsV1beta2({
    required this.defaultKeySpecs,
    required this.kind,
    required this.nonExistence,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultKeySpecs'] = pulumi.Input.encodeList<
        DnsKeySpecResponseDnsV1beta2,
        Map<String, dynamic>>(defaultKeySpecs, (value) => value.toMap());
    map['kind'] = kind;
    map['nonExistence'] = nonExistence;
    map['state'] = state;
    return map;
  }

  factory ManagedZoneDnsSecConfigResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfigResponseDnsV1beta2(
      defaultKeySpecs: pulumi.Input.decodeList<DnsKeySpecResponseDnsV1beta2>(
          map['defaultKeySpecs'],
          (value) => DnsKeySpecResponseDnsV1beta2.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      nonExistence: map['nonExistence'] as String,
      state: map['state'] as String,
    );
  }
}
