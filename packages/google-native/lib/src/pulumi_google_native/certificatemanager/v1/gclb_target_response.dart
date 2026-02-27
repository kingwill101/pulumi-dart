// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ip_config_response.dart';

/// Describes a Target Proxy that uses this Certificate Map.
class GclbTargetResponse {
  /// IP configurations for this Target Proxy where the Certificate Map is serving.
  final List<IpConfigResponse> ipConfigs;

  /// This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
  final String targetHttpsProxy;

  /// This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.
  final String targetSslProxy;

  GclbTargetResponse({
    required this.ipConfigs,
    required this.targetHttpsProxy,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipConfigs'] = Input.encodeList<IpConfigResponse, Map<String, dynamic>>(
        ipConfigs, (value) => value.toMap());
    map['targetHttpsProxy'] = targetHttpsProxy;
    map['targetSslProxy'] = targetSslProxy;
    return map;
  }

  factory GclbTargetResponse.fromMap(Map<String, dynamic> map) {
    return GclbTargetResponse(
      ipConfigs: Input.decodeList<IpConfigResponse>(
          map['ipConfigs'],
          (value) =>
              IpConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetHttpsProxy: map['targetHttpsProxy'] as String,
      targetSslProxy: map['targetSslProxy'] as String,
    );
  }
}
