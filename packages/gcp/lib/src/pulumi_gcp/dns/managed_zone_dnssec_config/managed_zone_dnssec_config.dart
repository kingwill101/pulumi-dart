// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../managed_zone_dnssec_config_default_key_spec/managed_zone_dnssec_config_default_key_spec.dart';

class ManagedZoneDnssecConfig {
  /// Specifies parameters that will be used for generating initial DnsKeys
  /// for this ManagedZone. If you provide a spec for keySigning or zoneSigning,
  /// you must also provide one for the other.<span pulumi-lang-nodejs="
  /// defaultKeySpecs " pulumi-lang-dotnet="
  /// DefaultKeySpecs " pulumi-lang-go="
  /// defaultKeySpecs " pulumi-lang-python="
  /// default_key_specs " pulumi-lang-yaml="
  /// defaultKeySpecs " pulumi-lang-java="
  /// defaultKeySpecs ">
  /// default_key_specs </span>can only be updated when the state is <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>.
  /// Structure is documented below.
  final List<ManagedZoneDnssecConfigDefaultKeySpec>? defaultKeySpecs;

  /// Identifies what kind of resource this is
  final String? kind;

  /// Specifies the mechanism used to provide authenticated denial-of-existence responses.<span pulumi-lang-nodejs="
  /// nonExistence " pulumi-lang-dotnet="
  /// NonExistence " pulumi-lang-go="
  /// nonExistence " pulumi-lang-python="
  /// non_existence " pulumi-lang-yaml="
  /// nonExistence " pulumi-lang-java="
  /// nonExistence ">
  /// non_existence </span>can only be updated when the state is <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>.
  /// Possible values are: <span pulumi-lang-nodejs="`nsec`" pulumi-lang-dotnet="`Nsec`" pulumi-lang-go="`nsec`" pulumi-lang-python="`nsec`" pulumi-lang-yaml="`nsec`" pulumi-lang-java="`nsec`">`nsec`</span>, <span pulumi-lang-nodejs="`nsec3`" pulumi-lang-dotnet="`Nsec3`" pulumi-lang-go="`nsec3`" pulumi-lang-python="`nsec3`" pulumi-lang-yaml="`nsec3`" pulumi-lang-java="`nsec3`">`nsec3`</span>.
  final String? nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in
  /// Possible values are: <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>, <span pulumi-lang-nodejs="`on`" pulumi-lang-dotnet="`On`" pulumi-lang-go="`on`" pulumi-lang-python="`on`" pulumi-lang-yaml="`on`" pulumi-lang-java="`on`">`on`</span>, <span pulumi-lang-nodejs="`transfer`" pulumi-lang-dotnet="`Transfer`" pulumi-lang-go="`transfer`" pulumi-lang-python="`transfer`" pulumi-lang-yaml="`transfer`" pulumi-lang-java="`transfer`">`transfer`</span>.
  final String? state;

  ManagedZoneDnssecConfig({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeySpecsValue = defaultKeySpecs;
    if (defaultKeySpecsValue != null) {
      map['defaultKeySpecs'] = Input.encodeList<
          ManagedZoneDnssecConfigDefaultKeySpec,
          Map<String, dynamic>>(defaultKeySpecsValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nonExistenceValue = nonExistence;
    if (nonExistenceValue != null) {
      map['nonExistence'] = nonExistenceValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory ManagedZoneDnssecConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnssecConfig(
      defaultKeySpecs: map['defaultKeySpecs'] == null
          ? null
          : Input.decodeList<ManagedZoneDnssecConfigDefaultKeySpec>(
              map['defaultKeySpecs'],
              (value) => ManagedZoneDnssecConfigDefaultKeySpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      nonExistence:
          map['nonExistence'] == null ? null : map['nonExistence'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
