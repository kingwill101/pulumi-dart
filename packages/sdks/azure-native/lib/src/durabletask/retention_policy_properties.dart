// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_details.dart';

/// The retention policy settings for the resource
class RetentionPolicyProperties {
  /// The orchestration retention policies
  final pulumi.Input<List<RetentionPolicyDetails>?>? retentionPolicies;

  /// Creates a new [RetentionPolicyProperties].
  /// [retentionPolicies] The orchestration retention policies
  const RetentionPolicyProperties({
    this.retentionPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicies': ?pulumi.Input.mapOptionalInputValue<List<RetentionPolicyDetails>, List<Map<String, dynamic>>>(retentionPolicies, (value) => pulumi.Input.encodeList<RetentionPolicyDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RetentionPolicyProperties.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyProperties(
      retentionPolicies: (() { final guardedValue = map['retentionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RetentionPolicyDetails>(guardedValue, (value) => RetentionPolicyDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
