// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_profile_container_group_naming_policy_guid_naming_policy_response.dart';

/// Container Groups are named on a generic guid based naming scheme/policy. Customer can modify naming policy to add prefix to CG names during scale out operation.
class ElasticProfileContainerGroupNamingPolicyResponse {
  final pulumi.Input<ElasticProfileContainerGroupNamingPolicyGuidNamingPolicyResponse?>? guidNamingPolicy;

  /// Creates a new [ElasticProfileContainerGroupNamingPolicyResponse].
  /// [guidNamingPolicy] Optional.
  const ElasticProfileContainerGroupNamingPolicyResponse({
    this.guidNamingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidNamingPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticProfileContainerGroupNamingPolicyGuidNamingPolicyResponse, Map<String, dynamic>>(guidNamingPolicy, (value) => value.toMap()),
    };
  }

  factory ElasticProfileContainerGroupNamingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ElasticProfileContainerGroupNamingPolicyResponse(
      guidNamingPolicy: (() { final guardedValue = map['guidNamingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticProfileContainerGroupNamingPolicyGuidNamingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
