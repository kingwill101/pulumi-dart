// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_glb_setting_cdn.dart';

class GetLoadBalancerGlbSetting {
  /// CDN specific configurations
  final List<GetLoadBalancerGlbSettingCdn> cdns;
  /// fail-over threshold
  final int failoverThreshold;
  /// region priority map
  final Map<String, int> regionPriorities;
  /// target port rules
  final int targetPort;
  /// target protocol rules
  final String targetProtocol;

  /// Creates a new [GetLoadBalancerGlbSetting].
  /// [cdns] CDN specific configurations
  /// [failoverThreshold] fail-over threshold
  /// [regionPriorities] region priority map
  /// [targetPort] target port rules
  /// [targetProtocol] target protocol rules
  GetLoadBalancerGlbSetting({
    required this.cdns,
    required this.failoverThreshold,
    required this.regionPriorities,
    required this.targetPort,
    required this.targetProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdns': pulumi.Input.encodeList<GetLoadBalancerGlbSettingCdn, Map<String, dynamic>>(cdns, (value) => value.toMap()),
      'failoverThreshold': failoverThreshold,
      'regionPriorities': regionPriorities,
      'targetPort': targetPort,
      'targetProtocol': targetProtocol,
    };
  }

  factory GetLoadBalancerGlbSetting.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerGlbSetting(
      cdns: pulumi.Input.decodeList<GetLoadBalancerGlbSettingCdn>(map['cdns'], (value) => GetLoadBalancerGlbSettingCdn.fromMap((value as Map).cast<String, dynamic>())),
      failoverThreshold: map['failoverThreshold'] as int,
      regionPriorities: (map['regionPriorities'] as Map).cast<String, int>(),
      targetPort: map['targetPort'] as int,
      targetProtocol: map['targetProtocol'] as String,
    );
  }
}

