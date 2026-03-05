// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_profile_guid_naming_policy.dart';

/// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
class ElasticProfileContainerGroupNamingPolicy {
  final pulumi.Input<ElasticProfileGuidNamingPolicy>? guidNamingPolicy;

  /// Creates a new [ElasticProfileContainerGroupNamingPolicy].
  /// [guidNamingPolicy] Optional.
  ElasticProfileContainerGroupNamingPolicy({
    this.guidNamingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidNamingPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticProfileGuidNamingPolicy, Map<String, dynamic>>(guidNamingPolicy, (value) => value.toMap()),
    };
  }

  factory ElasticProfileContainerGroupNamingPolicy.fromMap(Map<String, dynamic> map) {
    return ElasticProfileContainerGroupNamingPolicy(
      guidNamingPolicy: (() { final guardedValue = map['guidNamingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticProfileGuidNamingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

