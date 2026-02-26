// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'dns_key_spec2.dart';
import 'managed_zone_dns_sec_config_non_existence2.dart';
import 'managed_zone_dns_sec_config_state2.dart';

class ManagedZoneDnsSecConfig2 {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final List<DnsKeySpec2>? defaultKeySpecs;
  final String? kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final ManagedZoneDnsSecConfigNonExistence2? nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final ManagedZoneDnsSecConfigState2? state;

  ManagedZoneDnsSecConfig2({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeySpecsValue = defaultKeySpecs;
    if (defaultKeySpecsValue != null) {
      map['defaultKeySpecs'] =
          Input.encodeList<DnsKeySpec2, Map<String, dynamic>>(
              defaultKeySpecsValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nonExistenceValue = nonExistence;
    if (nonExistenceValue != null) {
      map['nonExistence'] = nonExistenceValue.value;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    return map;
  }

  factory ManagedZoneDnsSecConfig2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfig2(
      defaultKeySpecs: map['defaultKeySpecs'] == null
          ? null
          : Input.decodeList<DnsKeySpec2>(
              map['defaultKeySpecs'],
              (value) =>
                  DnsKeySpec2.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      nonExistence: map['nonExistence'] == null
          ? null
          : ManagedZoneDnsSecConfigNonExistence2.fromValue(
              map['nonExistence'] as String),
      state: map['state'] == null
          ? null
          : ManagedZoneDnsSecConfigState2.fromValue(map['state'] as String),
    );
  }
}
