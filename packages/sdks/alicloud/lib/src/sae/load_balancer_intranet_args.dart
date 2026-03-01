// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_intranet_intranet.dart';

/// {@template pulumi_sae_load_balancer_intranet_load_balancer_intranet_args_doc}
/// The set of arguments for LoadBalancerIntranet.
/// {@endtemplate}
/// {@macro pulumi_sae_load_balancer_intranet_load_balancer_intranet_args_doc}
class LoadBalancerIntranetArgs {
  /// The target application ID that needs to be bound to the SLB.
  final pulumi.Input<String> appId;
  /// The intranet SLB ID.
  final pulumi.Input<String>? intranetSlbId;
  /// The bound private network SLB. See `intranet` below.
  final pulumi.Input<List<LoadBalancerIntranetIntranet>> intranets;

  /// Creates a new [LoadBalancerIntranetArgs].
  /// [appId] The target application ID that needs to be bound to the SLB.
  /// [intranetSlbId] The intranet SLB ID.
  /// [intranets] The bound private network SLB. See `intranet` below.
  LoadBalancerIntranetArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<String>? intranetSlbId,
    required pulumi.Output<List<LoadBalancerIntranetIntranet>> intranets,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      intranetSlbId = pulumi.Input.asOptionalInput<String>(intranetSlbId),
      intranets = pulumi.Input.asInput<List<LoadBalancerIntranetIntranet>>(intranets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'intranetSlbId': ?intranetSlbId,
      'intranets': pulumi.Input.mapInputValue<List<LoadBalancerIntranetIntranet>, List<Map<String, dynamic>>>(intranets, (value) => pulumi.Input.encodeList<LoadBalancerIntranetIntranet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerIntranetArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIntranetArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      intranetSlbId: map['intranetSlbId'] == null ? null : pulumi.Output.create<String>(map['intranetSlbId'] as String),
      intranets: pulumi.Output.create<List<LoadBalancerIntranetIntranet>>(pulumi.Input.decodeList<LoadBalancerIntranetIntranet>(map['intranets'], (value) => LoadBalancerIntranetIntranet.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

