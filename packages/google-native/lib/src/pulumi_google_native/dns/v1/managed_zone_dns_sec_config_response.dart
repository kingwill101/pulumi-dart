// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dns_key_spec_response.dart';

class ManagedZoneDnsSecConfigResponse {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final List<DnsKeySpecResponse> defaultKeySpecs;
  final String kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final String nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final String state;

  ManagedZoneDnsSecConfigResponse({
    required this.defaultKeySpecs,
    required this.kind,
    required this.nonExistence,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultKeySpecs'] =
        Input.encodeList<DnsKeySpecResponse, Map<String, dynamic>>(
            defaultKeySpecs, (value) => value.toMap());
    map['kind'] = kind;
    map['nonExistence'] = nonExistence;
    map['state'] = state;
    return map;
  }

  factory ManagedZoneDnsSecConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfigResponse(
      defaultKeySpecs: Input.decodeList<DnsKeySpecResponse>(
          map['defaultKeySpecs'],
          (value) => DnsKeySpecResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      nonExistence: map['nonExistence'] as String,
      state: map['state'] as String,
    );
  }
}
