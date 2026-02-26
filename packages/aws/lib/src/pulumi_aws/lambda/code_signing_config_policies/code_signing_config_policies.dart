// ignore_for_file: unused_element, unnecessary_cast

class CodeSigningConfigPolicies {
  /// Code signing configuration policy for deployment validation failure. If you set the policy to `Enforce`, Lambda blocks the deployment request if code-signing validation checks fail. If you set the policy to `Warn`, Lambda allows the deployment and creates a CloudWatch log. Valid values: `Warn`, `Enforce`. Default value: `Warn`.
  final String untrustedArtifactOnDeployment;

  CodeSigningConfigPolicies({
    required this.untrustedArtifactOnDeployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['untrustedArtifactOnDeployment'] = untrustedArtifactOnDeployment;
    return map;
  }

  factory CodeSigningConfigPolicies.fromMap(Map<String, dynamic> map) {
    return CodeSigningConfigPolicies(
      untrustedArtifactOnDeployment:
          map['untrustedArtifactOnDeployment'] as String,
    );
  }
}
