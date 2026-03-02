// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_profile_response_container_group_naming_policy.dart';

/// Describes the elastic profile of the NGroup
class ElasticProfileResponse {
  /// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
  final pulumi.Input<ElasticProfileResponseContainerGroupNamingPolicy>? containerGroupNamingPolicy;
  final pulumi.Input<int>? desiredCount;
  /// Flag that indicates whether desiredCount should be maintained when customer deletes SPECIFIC container groups (CGs) from the NGroups. In this case, new CGs will be created by NGroup to compensate for the specific deleted ones.
  final pulumi.Input<bool>? maintainDesiredCount;

  /// Creates a new [ElasticProfileResponse].
  /// [containerGroupNamingPolicy] Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
  /// [desiredCount] Optional.
  /// [maintainDesiredCount] Flag that indicates whether desiredCount should be maintained when customer deletes SPECIFIC container groups (CGs) from the NGroups. In this case, new CGs will be created by NGroup to compensate for the specific deleted ones.
  ElasticProfileResponse({
    this.containerGroupNamingPolicy,
    this.desiredCount,
    this.maintainDesiredCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupNamingPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticProfileResponseContainerGroupNamingPolicy, Map<String, dynamic>>(containerGroupNamingPolicy, (value) => value.toMap()),
      'desiredCount': ?desiredCount,
      'maintainDesiredCount': ?maintainDesiredCount,
    };
  }

  factory ElasticProfileResponse.fromMap(Map<String, dynamic> map) {
    return ElasticProfileResponse(
      containerGroupNamingPolicy: map['containerGroupNamingPolicy'] == null ? null : (ElasticProfileResponseContainerGroupNamingPolicy.fromMap((map['containerGroupNamingPolicy']! as Map).cast<String, dynamic>())).input(),
      desiredCount: map['desiredCount'] == null ? null : (map['desiredCount']! as int).input(),
      maintainDesiredCount: map['maintainDesiredCount'] == null ? null : (map['maintainDesiredCount']! as bool).input(),
    );
  }
}

