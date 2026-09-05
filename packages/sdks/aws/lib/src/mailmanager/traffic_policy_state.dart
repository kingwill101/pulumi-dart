// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement.dart';

/// Input properties used for looking up and filtering TrafficPolicy resources.
class TrafficPolicyState {
  /// ARN of the traffic policy.
  final pulumi.Input<String?>? arn;
  /// Timestamp when the traffic policy was created.
  final pulumi.Input<String?>? createdTimestamp;
  /// Default action for traffic that does not match any policy statement. Valid values are `ALLOW` and `DENY`.
  final pulumi.Input<String?>? defaultAction;
  /// Timestamp when the traffic policy was last updated.
  final pulumi.Input<String?>? lastUpdatedTimestamp;
  /// Maximum message size, in bytes, allowed by the traffic policy.
  final pulumi.Input<int?>? maxMessageSizeBytes;
  /// Name of the traffic policy.
  final pulumi.Input<String?>? name;
  /// Traffic policy statements. See `policyStatement` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<TrafficPolicyPolicyStatement>?>? policyStatements;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [TrafficPolicyState].
  /// [arn] ARN of the traffic policy.
  /// [createdTimestamp] Timestamp when the traffic policy was created.
  /// [defaultAction] Default action for traffic that does not match any policy statement. Valid values are `ALLOW` and `DENY`.
  /// [lastUpdatedTimestamp] Timestamp when the traffic policy was last updated.
  /// [maxMessageSizeBytes] Maximum message size, in bytes, allowed by the traffic policy.
  /// [name] Name of the traffic policy.
  /// [policyStatements] Traffic policy statements. See `policyStatement` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const TrafficPolicyState({
    this.arn,
    this.createdTimestamp,
    this.defaultAction,
    this.lastUpdatedTimestamp,
    this.maxMessageSizeBytes,
    this.name,
    this.policyStatements,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTimestamp': ?createdTimestamp,
      'defaultAction': ?defaultAction,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'maxMessageSizeBytes': ?maxMessageSizeBytes,
      'name': ?name,
      'policyStatements': ?pulumi.Input.mapOptionalInputValue<List<TrafficPolicyPolicyStatement>, List<Map<String, dynamic>>>(policyStatements, (value) => pulumi.Input.encodeList<TrafficPolicyPolicyStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TrafficPolicyState.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTimestamp: (() { final guardedValue = map['lastUpdatedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxMessageSizeBytes: (() { final guardedValue = map['maxMessageSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyStatements: (() { final guardedValue = map['policyStatements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficPolicyPolicyStatement>(guardedValue, (value) => TrafficPolicyPolicyStatement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
