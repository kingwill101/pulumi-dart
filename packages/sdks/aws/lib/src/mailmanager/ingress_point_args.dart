// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_point_ingress_point_configuration.dart';
import 'ingress_point_network_configuration.dart';
import 'ingress_point_timeouts.dart';

/// {@template pulumi_mailmanager_ingress_point_ingress_point_args_doc}
/// The set of arguments for IngressPoint.
/// {@endtemplate}
/// {@macro pulumi_mailmanager_ingress_point_ingress_point_args_doc}
class IngressPointArgs {
  /// Configuration used to authenticate with the ingress point. See `ingressPointConfiguration` Block for details.
  final pulumi.Input<IngressPointIngressPointConfiguration>? ingressPointConfiguration;
  /// Name of the ingress point.
  final pulumi.Input<String>? name;
  /// Network configuration for the ingress point. See `networkConfiguration` Block for details. Changing this value forces a new resource.
  final pulumi.Input<IngressPointNetworkConfiguration>? networkConfiguration;
  /// Region where this resource is managed.
  final pulumi.Input<String>? region;
  /// Identifier of the rule set applied to the ingress point.
  final pulumi.Input<String> ruleSetId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<IngressPointTimeouts>? timeouts;
  /// TLS policy for the ingress point. Valid values are `REQUIRED`, `OPTIONAL`, and `FIPS`.
  final pulumi.Input<String>? tlsPolicy;
  /// Identifier of the traffic policy applied to the ingress point.
  final pulumi.Input<String> trafficPolicyId;
  /// Type of the ingress point. Valid values are `OPEN`, `AUTH`, and `MTLS`. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [IngressPointArgs].
  /// [ingressPointConfiguration] Configuration used to authenticate with the ingress point. See `ingressPointConfiguration` Block for details.
  /// [name] Name of the ingress point.
  /// [networkConfiguration] Network configuration for the ingress point. See `networkConfiguration` Block for details. Changing this value forces a new resource.
  /// [region] Region where this resource is managed.
  /// [ruleSetId] Identifier of the rule set applied to the ingress point.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [tlsPolicy] TLS policy for the ingress point. Valid values are `REQUIRED`, `OPTIONAL`, and `FIPS`.
  /// [trafficPolicyId] Identifier of the traffic policy applied to the ingress point.
  /// [type] Type of the ingress point. Valid values are `OPEN`, `AUTH`, and `MTLS`. Changing this value forces a new resource.
  const IngressPointArgs({
    this.ingressPointConfiguration,
    this.name,
    this.networkConfiguration,
    this.region,
    required this.ruleSetId,
    this.tags,
    this.timeouts,
    this.tlsPolicy,
    required this.trafficPolicyId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressPointConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointIngressPointConfiguration, Map<String, dynamic>>(ingressPointConfiguration, (value) => value.toMap()),
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'region': ?region,
      'ruleSetId': ruleSetId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IngressPointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'tlsPolicy': ?tlsPolicy,
      'trafficPolicyId': trafficPolicyId,
      'type': type,
    };
  }

  factory IngressPointArgs.fromMap(Map<String, dynamic> map) {
    return IngressPointArgs(
      ingressPointConfiguration: (() { final guardedValue = map['ingressPointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointIngressPointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSetId: pulumi.Input.fromValue(map['ruleSetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsPolicy: (() { final guardedValue = map['tlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficPolicyId: pulumi.Input.fromValue(map['trafficPolicyId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
