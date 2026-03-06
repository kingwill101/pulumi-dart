// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_details_response.dart';

/// The retention policy settings for the resource
class RetentionPolicyPropertiesResponse {
  /// The status of the last operation
  final pulumi.Input<String> provisioningState;
  /// The orchestration retention policies
  final pulumi.Input<List<RetentionPolicyDetailsResponse>>? retentionPolicies;

  /// Creates a new [RetentionPolicyPropertiesResponse].
  /// [provisioningState] The status of the last operation
  /// [retentionPolicies] The orchestration retention policies
  const RetentionPolicyPropertiesResponse({
    required this.provisioningState,
    this.retentionPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'retentionPolicies': ?pulumi.Input.mapOptionalInputValue<List<RetentionPolicyDetailsResponse>, List<Map<String, dynamic>>>(retentionPolicies, (value) => pulumi.Input.encodeList<RetentionPolicyDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RetentionPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      retentionPolicies: (() { final guardedValue = map['retentionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RetentionPolicyDetailsResponse>(guardedValue, (value) => RetentionPolicyDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

