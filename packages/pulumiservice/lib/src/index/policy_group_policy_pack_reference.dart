// ignore_for_file: unused_element, unnecessary_cast


/// A reference to a policy pack within a policy group.
class PolicyGroupPolicyPackReference {
  /// Optional configuration for the policy pack.
  final Map<String, dynamic>? config;
  /// The display name of the policy pack.
  final String? displayName;
  /// The name of the policy pack.
  final String name;
  /// The version of the policy pack.
  final double? version;
  /// The version tag of the policy pack.
  final String? versionTag;

  /// Creates a new [PolicyGroupPolicyPackReference].
  /// [config] Optional configuration for the policy pack.
  /// [displayName] The display name of the policy pack.
  /// [name] The name of the policy pack.
  /// [version] The version of the policy pack.
  /// [versionTag] The version tag of the policy pack.
  PolicyGroupPolicyPackReference({
    this.config,
    this.displayName,
    required this.name,
    this.version,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'name': name,
      'version': ?version,
      'versionTag': ?versionTag,
    };
  }

  factory PolicyGroupPolicyPackReference.fromMap(Map<String, dynamic> map) {
    return PolicyGroupPolicyPackReference(
      config: map['config'] == null ? null : (map['config'] as Map).cast<String, dynamic>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
      version: map['version'] == null ? null : map['version'] as double,
      versionTag: map['versionTag'] == null ? null : map['versionTag'] as String,
    );
  }
}

