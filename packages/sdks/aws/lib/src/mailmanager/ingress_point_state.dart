// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_point_ingress_point_configuration.dart';
import 'ingress_point_network_configuration.dart';
import 'ingress_point_timeouts.dart';

/// Input properties used for looking up and filtering IngressPoint resources.
class IngressPointState {
  /// DNS A record that identifies your ingress endpoint for email clients.
  final pulumi.Input<String?>? aRecord;
  /// ARN of the Ingress Point.
  final pulumi.Input<String?>? arn;
  /// Timestamp of when the ingress point was created.
  final pulumi.Input<String?>? createdTimestamp;
  /// Configuration used to authenticate with the ingress point. See `ingressPointConfiguration` Block for details.
  final pulumi.Input<IngressPointIngressPointConfiguration?>? ingressPointConfiguration;
  /// Timestamp of when the ingress point was last updated.
  final pulumi.Input<String?>? lastUpdatedTimestamp;
  /// Name of the ingress point.
  final pulumi.Input<String?>? name;
  /// Network configuration for the ingress point. See `networkConfiguration` Block for details. Changing this value forces a new resource.
  final pulumi.Input<IngressPointNetworkConfiguration?>? networkConfiguration;
  /// Region where this resource is managed.
  final pulumi.Input<String?>? region;
  /// Identifier of the rule set applied to the ingress point.
  final pulumi.Input<String?>? ruleSetId;
  /// Status of the ingress point.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<IngressPointTimeouts?>? timeouts;
  /// TLS policy for the ingress point. Valid values are `REQUIRED`, `OPTIONAL`, and `FIPS`.
  final pulumi.Input<String?>? tlsPolicy;
  /// Identifier of the traffic policy applied to the ingress point.
  final pulumi.Input<String?>? trafficPolicyId;
  /// Type of the ingress point. Valid values are `OPEN`, `AUTH`, and `MTLS`. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;

  /// Creates a new [IngressPointState].
  /// [aRecord] DNS A record that identifies your ingress endpoint for email clients.
  /// [arn] ARN of the Ingress Point.
  /// [createdTimestamp] Timestamp of when the ingress point was created.
  /// [ingressPointConfiguration] Configuration used to authenticate with the ingress point. See `ingressPointConfiguration` Block for details.
  /// [lastUpdatedTimestamp] Timestamp of when the ingress point was last updated.
  /// [name] Name of the ingress point.
  /// [networkConfiguration] Network configuration for the ingress point. See `networkConfiguration` Block for details. Changing this value forces a new resource.
  /// [region] Region where this resource is managed.
  /// [ruleSetId] Identifier of the rule set applied to the ingress point.
  /// [status] Status of the ingress point.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [tlsPolicy] TLS policy for the ingress point. Valid values are `REQUIRED`, `OPTIONAL`, and `FIPS`.
  /// [trafficPolicyId] Identifier of the traffic policy applied to the ingress point.
  /// [type] Type of the ingress point. Valid values are `OPEN`, `AUTH`, and `MTLS`. Changing this value forces a new resource.
  const IngressPointState({
    this.aRecord,
    this.arn,
    this.createdTimestamp,
    this.ingressPointConfiguration,
    this.lastUpdatedTimestamp,
    this.name,
    this.networkConfiguration,
    this.region,
    this.ruleSetId,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.tlsPolicy,
    this.trafficPolicyId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecord': ?aRecord,
      'arn': ?arn,
      'createdTimestamp': ?createdTimestamp,
      'ingressPointConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointIngressPointConfiguration, Map<String, dynamic>>(ingressPointConfiguration, (value) => value.toMap()),
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'region': ?region,
      'ruleSetId': ?ruleSetId,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IngressPointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'tlsPolicy': ?tlsPolicy,
      'trafficPolicyId': ?trafficPolicyId,
      'type': ?type,
    };
  }

  factory IngressPointState.fromMap(Map<String, dynamic> map) {
    return IngressPointState(
      aRecord: (() { final guardedValue = map['aRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressPointConfiguration: (() { final guardedValue = map['ingressPointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointIngressPointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastUpdatedTimestamp: (() { final guardedValue = map['lastUpdatedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSetId: (() { final guardedValue = map['ruleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsPolicy: (() { final guardedValue = map['tlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficPolicyId: (() { final guardedValue = map['trafficPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
