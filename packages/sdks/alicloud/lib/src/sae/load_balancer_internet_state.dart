// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_internet_internet.dart';

/// Input properties used for looking up and filtering LoadBalancerInternet resources.
class LoadBalancerInternetState {
  /// The target application ID that needs to be bound to the SLB.
  final pulumi.Input<String>? appId;
  /// Use designated public network SLBs that have been purchased to support non-shared instances.
  final pulumi.Input<String>? internetIp;
  /// The internet SLB ID.
  final pulumi.Input<String>? internetSlbId;
  /// The bound private network SLB. See `internet` below.
  final pulumi.Input<List<LoadBalancerInternetInternet>>? internets;

  /// Creates a new [LoadBalancerInternetState].
  /// [appId] The target application ID that needs to be bound to the SLB.
  /// [internetIp] Use designated public network SLBs that have been purchased to support non-shared instances.
  /// [internetSlbId] The internet SLB ID.
  /// [internets] The bound private network SLB. See `internet` below.
  const LoadBalancerInternetState({
    this.appId,
    this.internetIp,
    this.internetSlbId,
    this.internets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'internetIp': ?internetIp,
      'internetSlbId': ?internetSlbId,
      'internets': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerInternetInternet>, List<Map<String, dynamic>>>(internets, (value) => pulumi.Input.encodeList<LoadBalancerInternetInternet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerInternetState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerInternetState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetIp: (() { final guardedValue = map['internetIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetSlbId: (() { final guardedValue = map['internetSlbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internets: (() { final guardedValue = map['internets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerInternetInternet>(guardedValue, (value) => LoadBalancerInternetInternet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

