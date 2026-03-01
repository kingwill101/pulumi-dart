// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_config_response.dart';

/// Describes a Target Proxy that uses this Certificate Map.
class GclbTargetResponse {
  /// IP configurations for this Target Proxy where the Certificate Map is serving.
  final List<IpConfigResponse> ipConfigs;

  /// This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
  final String targetHttpsProxy;

  /// This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.
  final String targetSslProxy;

  /// Creates a new [GclbTargetResponse].
  /// [ipConfigs] IP configurations for this Target Proxy where the Certificate Map is serving.
  /// [targetHttpsProxy] This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
  /// [targetSslProxy] This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.
  GclbTargetResponse({
    required this.ipConfigs,
    required this.targetHttpsProxy,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigs':
          pulumi.Input.encodeList<IpConfigResponse, Map<String, dynamic>>(
            ipConfigs,
            (value) => value.toMap(),
          ),
      'targetHttpsProxy': targetHttpsProxy,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GclbTargetResponse.fromMap(Map<String, dynamic> map) {
    return GclbTargetResponse(
      ipConfigs: pulumi.Input.decodeList<IpConfigResponse>(
        map['ipConfigs'],
        (value) =>
            IpConfigResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      targetHttpsProxy: map['targetHttpsProxy'] as String,
      targetSslProxy: map['targetSslProxy'] as String,
    );
  }
}
