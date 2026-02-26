// ignore_for_file: unused_element, unnecessary_cast

class GetCodeSigningConfigPolicy {
  /// Code signing configuration policy for deployment validation failure. Valid values: `Warn`, `Enforce`.
  final String untrustedArtifactOnDeployment;

  GetCodeSigningConfigPolicy({
    required this.untrustedArtifactOnDeployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['untrustedArtifactOnDeployment'] = untrustedArtifactOnDeployment;
    return map;
  }

  factory GetCodeSigningConfigPolicy.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningConfigPolicy(
      untrustedArtifactOnDeployment:
          map['untrustedArtifactOnDeployment'] as String,
    );
  }
}
