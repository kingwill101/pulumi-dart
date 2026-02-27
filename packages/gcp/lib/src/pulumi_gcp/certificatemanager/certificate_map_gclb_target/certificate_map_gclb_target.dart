// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_map_gclb_target_ip_config/certificate_map_gclb_target_ip_config.dart';

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

  CertificateMapGclbTarget({
    this.ipConfigs,
    this.targetHttpsProxy,
    this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipConfigsValue = ipConfigs;
    if (ipConfigsValue != null) {
      map['ipConfigs'] = pulumi.Input.encodeList<
          CertificateMapGclbTargetIpConfig,
          Map<String, dynamic>>(ipConfigsValue, (value) => value.toMap());
    }
    final targetHttpsProxyValue = targetHttpsProxy;
    if (targetHttpsProxyValue != null) {
      map['targetHttpsProxy'] = targetHttpsProxyValue;
    }
    final targetSslProxyValue = targetSslProxy;
    if (targetSslProxyValue != null) {
      map['targetSslProxy'] = targetSslProxyValue;
    }
    return map;
  }

  factory CertificateMapGclbTarget.fromMap(Map<String, dynamic> map) {
    return CertificateMapGclbTarget(
      ipConfigs: map['ipConfigs'] == null
          ? null
          : pulumi.Input.decodeList<CertificateMapGclbTargetIpConfig>(
              map['ipConfigs'],
              (value) => CertificateMapGclbTargetIpConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetHttpsProxy: map['targetHttpsProxy'] == null
          ? null
          : map['targetHttpsProxy'] as String,
      targetSslProxy: map['targetSslProxy'] == null
          ? null
          : map['targetSslProxy'] as String,
    );
  }
}
