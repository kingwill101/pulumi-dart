// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_profile_container_group_naming_policy.dart';

/// Describes the elastic profile of the NGroup
class ElasticProfile {
  /// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
  final pulumi.Input<ElasticProfileContainerGroupNamingPolicy>? containerGroupNamingPolicy;
  final pulumi.Input<int>? desiredCount;
  /// Flag that indicates whether desiredCount should be maintained when customer deletes SPECIFIC container groups (CGs) from the NGroups. In this case, new CGs will be created by NGroup to compensate for the specific deleted ones.
  final pulumi.Input<bool>? maintainDesiredCount;

  /// Creates a new [ElasticProfile].
  /// [containerGroupNamingPolicy] Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
  /// [desiredCount] Optional.
  /// [maintainDesiredCount] Flag that indicates whether desiredCount should be maintained when customer deletes SPECIFIC container groups (CGs) from the NGroups. In this case, new CGs will be created by NGroup to compensate for the specific deleted ones.
  ElasticProfile({
    this.containerGroupNamingPolicy,
    this.desiredCount,
    this.maintainDesiredCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupNamingPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticProfileContainerGroupNamingPolicy, Map<String, dynamic>>(containerGroupNamingPolicy, (value) => value.toMap()),
      'desiredCount': ?desiredCount,
      'maintainDesiredCount': ?maintainDesiredCount,
    };
  }

  factory ElasticProfile.fromMap(Map<String, dynamic> map) {
    return ElasticProfile(
      containerGroupNamingPolicy: map['containerGroupNamingPolicy'] == null ? null : (ElasticProfileContainerGroupNamingPolicy.fromMap((map['containerGroupNamingPolicy'] as Map).cast<String, dynamic>())).input(),
      desiredCount: map['desiredCount'] == null ? null : (map['desiredCount'] as int).input(),
      maintainDesiredCount: map['maintainDesiredCount'] == null ? null : (map['maintainDesiredCount'] as bool).input(),
    );
  }
}

