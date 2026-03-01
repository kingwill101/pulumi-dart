// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_profile_guid_naming_policy.dart';

/// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
class ElasticProfileContainerGroupNamingPolicy {
  final ElasticProfileGuidNamingPolicy? guidNamingPolicy;

  /// Creates a new [ElasticProfileContainerGroupNamingPolicy].
  /// [guidNamingPolicy] Optional.
  ElasticProfileContainerGroupNamingPolicy({
    this.guidNamingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidNamingPolicy': ?guidNamingPolicy == null ? null : guidNamingPolicy!.toMap(),
    };
  }

  factory ElasticProfileContainerGroupNamingPolicy.fromMap(Map<String, dynamic> map) {
    return ElasticProfileContainerGroupNamingPolicy(
      guidNamingPolicy: map['guidNamingPolicy'] == null ? null : ElasticProfileGuidNamingPolicy.fromMap((map['guidNamingPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

