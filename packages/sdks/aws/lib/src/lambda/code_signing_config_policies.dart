// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CodeSigningConfigPolicies {
  /// Code signing configuration policy for deployment validation failure. If you set the policy to `Enforce`, Lambda blocks the deployment request if code-signing validation checks fail. If you set the policy to `Warn`, Lambda allows the deployment and creates a CloudWatch log. Valid values: `Warn`, `Enforce`. Default value: `Warn`.
  final pulumi.Input<String> untrustedArtifactOnDeployment;

  /// Creates a new [CodeSigningConfigPolicies].
  /// [untrustedArtifactOnDeployment] Code signing configuration policy for deployment validation failure. If you set the policy to `Enforce`, Lambda blocks the deployment request if code-signing validation checks fail. If you set the policy to `Warn`, Lambda allows the deployment and creates a CloudWatch log. Valid values: `Warn`, `Enforce`. Default value: `Warn`.
  CodeSigningConfigPolicies({
    required this.untrustedArtifactOnDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'untrustedArtifactOnDeployment': untrustedArtifactOnDeployment,
    };
  }

  factory CodeSigningConfigPolicies.fromMap(Map<String, dynamic> map) {
    return CodeSigningConfigPolicies(
      untrustedArtifactOnDeployment: pulumi.Input.fromValue(map['untrustedArtifactOnDeployment'] as String),
    );
  }
}

