// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_intranet_intranet.dart';

/// Input properties used for looking up and filtering LoadBalancerIntranet resources.
class LoadBalancerIntranetState {
  /// The target application ID that needs to be bound to the SLB.
  final pulumi.Input<String>? appId;
  /// Use designated private network SLBs that have been purchased to support non-shared instances.
  final pulumi.Input<String>? intranetIp;
  /// The intranet SLB ID.
  final pulumi.Input<String>? intranetSlbId;
  /// The bound private network SLB. See `intranet` below.
  final pulumi.Input<List<LoadBalancerIntranetIntranet>>? intranets;

  /// Creates a new [LoadBalancerIntranetState].
  /// [appId] The target application ID that needs to be bound to the SLB.
  /// [intranetIp] Use designated private network SLBs that have been purchased to support non-shared instances.
  /// [intranetSlbId] The intranet SLB ID.
  /// [intranets] The bound private network SLB. See `intranet` below.
  const LoadBalancerIntranetState({
    this.appId,
    this.intranetIp,
    this.intranetSlbId,
    this.intranets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'intranetIp': ?intranetIp,
      'intranetSlbId': ?intranetSlbId,
      'intranets': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerIntranetIntranet>, List<Map<String, dynamic>>>(intranets, (value) => pulumi.Input.encodeList<LoadBalancerIntranetIntranet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerIntranetState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIntranetState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intranetIp: (() { final guardedValue = map['intranetIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intranetSlbId: (() { final guardedValue = map['intranetSlbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intranets: (() { final guardedValue = map['intranets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerIntranetIntranet>(guardedValue, (value) => LoadBalancerIntranetIntranet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

