// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_non_existence_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_state_dns_v1beta2.dart';

class ManagedZoneDnsSecConfigDnsV1beta2 {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final List<DnsKeySpecDnsV1beta2>? defaultKeySpecs;
  final String? kind;
  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final ManagedZoneDnsSecConfigNonExistenceDnsV1beta2? nonExistence;
  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final ManagedZoneDnsSecConfigStateDnsV1beta2? state;

  /// Creates a new [ManagedZoneDnsSecConfigDnsV1beta2].
  /// [defaultKeySpecs] Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  /// [kind] Optional.
  /// [nonExistence] Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  /// [state] Specifies whether DNSSEC is enabled, and what mode it is in.
  ManagedZoneDnsSecConfigDnsV1beta2({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeySpecs': ?defaultKeySpecs == null ? null : pulumi.Input.encodeList<DnsKeySpecDnsV1beta2, Map<String, dynamic>>(defaultKeySpecs!, (value) => value.toMap()),
      'kind': ?kind,
      'nonExistence': ?nonExistence == null ? null : nonExistence!.value,
      'state': ?state == null ? null : state!.value,
    };
  }

  factory ManagedZoneDnsSecConfigDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfigDnsV1beta2(
      defaultKeySpecs: map['defaultKeySpecs'] == null ? null : pulumi.Input.decodeList<DnsKeySpecDnsV1beta2>(map['defaultKeySpecs'], (value) => DnsKeySpecDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      nonExistence: map['nonExistence'] == null ? null : ManagedZoneDnsSecConfigNonExistenceDnsV1beta2.fromValue(map['nonExistence'] as String),
      state: map['state'] == null ? null : ManagedZoneDnsSecConfigStateDnsV1beta2.fromValue(map['state'] as String),
    );
  }
}

