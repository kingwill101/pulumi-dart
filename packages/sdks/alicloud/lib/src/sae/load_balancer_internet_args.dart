// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_internet_internet.dart';

/// {@template pulumi_sae_load_balancer_internet_load_balancer_internet_args_doc}
/// The set of arguments for LoadBalancerInternet.
/// {@endtemplate}
/// {@macro pulumi_sae_load_balancer_internet_load_balancer_internet_args_doc}
class LoadBalancerInternetArgs {
  /// The target application ID that needs to be bound to the SLB.
  final pulumi.Input<String> appId;
  /// The internet SLB ID.
  final pulumi.Input<String>? internetSlbId;
  /// The bound private network SLB. See `internet` below.
  final pulumi.Input<List<LoadBalancerInternetInternet>> internets;

  /// Creates a new [LoadBalancerInternetArgs].
  /// [appId] The target application ID that needs to be bound to the SLB.
  /// [internetSlbId] The internet SLB ID.
  /// [internets] The bound private network SLB. See `internet` below.
  LoadBalancerInternetArgs({
    required this.appId,
    this.internetSlbId,
    required this.internets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'internetSlbId': ?internetSlbId,
      'internets': pulumi.Input.mapInputValue<List<LoadBalancerInternetInternet>, List<Map<String, dynamic>>>(internets, (value) => pulumi.Input.encodeList<LoadBalancerInternetInternet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerInternetArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerInternetArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      internetSlbId: (() { final guardedValue = map['internetSlbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internets: pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerInternetInternet>(map['internets']!, (value) => LoadBalancerInternetInternet.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

