// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyPack.
class GetPolicyPackResult {
  /// Configuration for the policy pack.
  final Map<String, dynamic>? config;
  /// The display name of the policy pack.
  final String displayName;
  /// The name of the policy pack.
  final String name;
  /// List of policies in this pack.
  final List<Map<String, String>>? policies;
  /// The version number.
  final int version;
  /// The version tag (if any).
  final String? versionTag;

  /// Creates a new [GetPolicyPackResult].
  /// [config] Configuration for the policy pack.
  /// [displayName] The display name of the policy pack.
  /// [name] The name of the policy pack.
  /// [policies] List of policies in this pack.
  /// [version] The version number.
  /// [versionTag] The version tag (if any).
  GetPolicyPackResult({
    this.config,
    required this.displayName,
    required this.name,
    this.policies,
    required this.version,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': displayName,
      'name': name,
      'policies': ?policies,
      'version': version,
      'versionTag': ?versionTag,
    };
  }

  factory GetPolicyPackResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyPackResult(
      config: map['config'] == null ? null : (map['config'] as Map).cast<String, dynamic>(),
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<Map<String, String>>(),
      version: map['version'] as int,
      versionTag: map['versionTag'] == null ? null : map['versionTag'] as String,
    );
  }
}

