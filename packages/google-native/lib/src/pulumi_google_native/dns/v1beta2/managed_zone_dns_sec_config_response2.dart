// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dns_key_spec_response2.dart';

class ManagedZoneDnsSecConfigResponse2 {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final List<DnsKeySpecResponse2> defaultKeySpecs;
  final String kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final String nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final String state;

  ManagedZoneDnsSecConfigResponse2({
    required this.defaultKeySpecs,
    required this.kind,
    required this.nonExistence,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultKeySpecs'] =
        Input.encodeList<DnsKeySpecResponse2, Map<String, dynamic>>(
            defaultKeySpecs, (value) => value.toMap());
    map['kind'] = kind;
    map['nonExistence'] = nonExistence;
    map['state'] = state;
    return map;
  }

  factory ManagedZoneDnsSecConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfigResponse2(
      defaultKeySpecs: Input.decodeList<DnsKeySpecResponse2>(
          map['defaultKeySpecs'],
          (value) => DnsKeySpecResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      nonExistence: map['nonExistence'] as String,
      state: map['state'] as String,
    );
  }
}
