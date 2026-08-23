// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_profile_container_group_naming_policy_response.dart';

/// Describes the elastic profile of the NGroup
class ElasticProfileResponse {
  /// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
  final pulumi.Input<ElasticProfileContainerGroupNamingPolicyResponse>? containerGroupNamingPolicy;
  final pulumi.Input<int>? desiredCount;
  /// Flag that indicates whether desiredCount should be maintained when customer deletes SPECIFIC container groups (CGs) from the NGroups. In this case, new CGs will be created by NGroup to compensate for the specific deleted ones.
  final pulumi.Input<bool>? maintainDesiredCount;

  /// Creates a new [ElasticProfileResponse].
  /// [containerGroupNamingPolicy] Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
  /// [desiredCount] Optional.
  /// [maintainDesiredCount] Flag that indicates whether desiredCount should be maintained when customer deletes SPECIFIC container groups (CGs) from the NGroups. In this case, new CGs will be created by NGroup to compensate for the specific deleted ones.
  const ElasticProfileResponse({
    this.containerGroupNamingPolicy,
    this.desiredCount,
    this.maintainDesiredCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupNamingPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticProfileContainerGroupNamingPolicyResponse, Map<String, dynamic>>(containerGroupNamingPolicy, (value) => value.toMap()),
      'desiredCount': ?desiredCount,
      'maintainDesiredCount': ?maintainDesiredCount,
    };
  }

  factory ElasticProfileResponse.fromMap(Map<String, dynamic> map) {
    return ElasticProfileResponse(
      containerGroupNamingPolicy: (() { final guardedValue = map['containerGroupNamingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticProfileContainerGroupNamingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      desiredCount: (() { final guardedValue = map['desiredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maintainDesiredCount: (() { final guardedValue = map['maintainDesiredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
