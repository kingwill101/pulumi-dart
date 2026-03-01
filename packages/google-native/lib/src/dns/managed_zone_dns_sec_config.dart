// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec.dart';
import 'managed_zone_dns_sec_config_non_existence.dart';
import 'managed_zone_dns_sec_config_state.dart';

class ManagedZoneDnsSecConfig {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final List<DnsKeySpec>? defaultKeySpecs;
  final String? kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final ManagedZoneDnsSecConfigNonExistence? nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final ManagedZoneDnsSecConfigState? state;

  /// Creates a new [ManagedZoneDnsSecConfig].
  /// [defaultKeySpecs] Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  /// [kind] Optional.
  /// [nonExistence] Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  /// [state] Specifies whether DNSSEC is enabled, and what mode it is in.
  ManagedZoneDnsSecConfig({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeySpecs': ?defaultKeySpecs == null
          ? null
          : pulumi.Input.encodeList<DnsKeySpec, Map<String, dynamic>>(
              defaultKeySpecs!,
              (value) => value.toMap(),
            ),
      'kind': ?kind,
      'nonExistence': ?nonExistence == null ? null : nonExistence!.value,
      'state': ?state == null ? null : state!.value,
    };
  }

  factory ManagedZoneDnsSecConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfig(
      defaultKeySpecs: map['defaultKeySpecs'] == null
          ? null
          : pulumi.Input.decodeList<DnsKeySpec>(
              map['defaultKeySpecs'],
              (value) =>
                  DnsKeySpec.fromMap((value as Map).cast<String, dynamic>()),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      nonExistence: map['nonExistence'] == null
          ? null
          : ManagedZoneDnsSecConfigNonExistence.fromValue(
              map['nonExistence'] as String,
            ),
      state: map['state'] == null
          ? null
          : ManagedZoneDnsSecConfigState.fromValue(map['state'] as String),
    );
  }
}
