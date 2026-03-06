// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCodeSigningConfigPolicy {
  /// Code signing configuration policy for deployment validation failure. Valid values: `Warn`, `Enforce`.
  final pulumi.Input<String> untrustedArtifactOnDeployment;

  /// Creates a new [GetCodeSigningConfigPolicy].
  /// [untrustedArtifactOnDeployment] Code signing configuration policy for deployment validation failure. Valid values: `Warn`, `Enforce`.
  const GetCodeSigningConfigPolicy({
    required this.untrustedArtifactOnDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'untrustedArtifactOnDeployment': untrustedArtifactOnDeployment,
    };
  }

  factory GetCodeSigningConfigPolicy.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningConfigPolicy(
      untrustedArtifactOnDeployment: pulumi.Input.fromValue(map['untrustedArtifactOnDeployment'] as String),
    );
  }
}

