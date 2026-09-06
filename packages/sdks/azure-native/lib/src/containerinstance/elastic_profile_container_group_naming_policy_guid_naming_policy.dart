// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ElasticProfileContainerGroupNamingPolicyGuidNamingPolicy {
  /// The prefix can be used when there are tooling limitations (e.g. on the Azure portal where CGs from multiple NGroups exist in the same RG). The prefix with the suffixed resource name must still follow Azure resource naming guidelines.
  final pulumi.Input<String?>? prefix;

  /// Creates a new [ElasticProfileContainerGroupNamingPolicyGuidNamingPolicy].
  /// [prefix] The prefix can be used when there are tooling limitations (e.g. on the Azure portal where CGs from multiple NGroups exist in the same RG). The prefix with the suffixed resource name must still follow Azure resource naming guidelines.
  const ElasticProfileContainerGroupNamingPolicyGuidNamingPolicy({
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
    };
  }

  factory ElasticProfileContainerGroupNamingPolicyGuidNamingPolicy.fromMap(Map<String, dynamic> map) {
    return ElasticProfileContainerGroupNamingPolicyGuidNamingPolicy(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
