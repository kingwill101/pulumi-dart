// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_profile_response_guid_naming_policy.dart';

/// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
class ElasticProfileResponseContainerGroupNamingPolicy {
  final pulumi.Input<ElasticProfileResponseGuidNamingPolicy>? guidNamingPolicy;

  /// Creates a new [ElasticProfileResponseContainerGroupNamingPolicy].
  /// [guidNamingPolicy] Optional.
  ElasticProfileResponseContainerGroupNamingPolicy({
    this.guidNamingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidNamingPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticProfileResponseGuidNamingPolicy, Map<String, dynamic>>(guidNamingPolicy, (value) => value.toMap()),
    };
  }

  factory ElasticProfileResponseContainerGroupNamingPolicy.fromMap(Map<String, dynamic> map) {
    return ElasticProfileResponseContainerGroupNamingPolicy(
      guidNamingPolicy: map['guidNamingPolicy'] == null ? null : (ElasticProfileResponseGuidNamingPolicy.fromMap((map['guidNamingPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

