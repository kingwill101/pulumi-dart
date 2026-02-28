// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_gclb_target_ip_config.dart';

class CertificateMapGclbTarget {
  /// An IP configuration where this Certificate Map is serving
  /// Structure is documented below.
  final List<CertificateMapGclbTargetIpConfig>? ipConfigs;
  /// Proxy name must be in the format projects/*/locations/*/targetHttpsProxies/*.
  /// This field is part of a union field `target_proxy`: Only one of `targetHttpsProxy` or
  /// `targetSslProxy` may be set.
  final String? targetHttpsProxy;
  /// Proxy name must be in the format projects/*/locations/*/targetSslProxies/*.
  /// This field is part of a union field `target_proxy`: Only one of `targetHttpsProxy` or
  /// `targetSslProxy` may be set.
  final String? targetSslProxy;

  /// Creates a new [CertificateMapGclbTarget].
  /// [ipConfigs] An IP configuration where this Certificate Map is serving
  /// [targetHttpsProxy] Proxy name must be in the format projects/*/locations/*/targetHttpsProxies/*.
  /// [targetSslProxy] Proxy name must be in the format projects/*/locations/*/targetSslProxies/*.
  CertificateMapGclbTarget({
    this.ipConfigs,
    this.targetHttpsProxy,
    this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigs': ?ipConfigs == null ? null : pulumi.Input.encodeList<CertificateMapGclbTargetIpConfig, Map<String, dynamic>>(ipConfigs!, (value) => value.toMap()),
      'targetHttpsProxy': ?targetHttpsProxy,
      'targetSslProxy': ?targetSslProxy,
    };
  }

  factory CertificateMapGclbTarget.fromMap(Map<String, dynamic> map) {
    return CertificateMapGclbTarget(
      ipConfigs: map['ipConfigs'] == null ? null : pulumi.Input.decodeList<CertificateMapGclbTargetIpConfig>(map['ipConfigs'], (value) => CertificateMapGclbTargetIpConfig.fromMap((value as Map).cast<String, dynamic>())),
      targetHttpsProxy: map['targetHttpsProxy'] == null ? null : map['targetHttpsProxy'] as String,
      targetSslProxy: map['targetSslProxy'] == null ? null : map['targetSslProxy'] as String,
    );
  }
}

