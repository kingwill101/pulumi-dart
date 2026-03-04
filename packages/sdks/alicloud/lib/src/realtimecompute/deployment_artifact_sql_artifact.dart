// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentArtifactSqlArtifact {
  /// Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  final pulumi.Input<List<String>>? additionalDependencies;

  /// Text content of the SQL job
  final pulumi.Input<String>? sqlScript;

  /// Creates a new [DeploymentArtifactSqlArtifact].
  /// [additionalDependencies] Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  /// [sqlScript] Text content of the SQL job
  DeploymentArtifactSqlArtifact({this.additionalDependencies, this.sqlScript});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDependencies': ?additionalDependencies,
      'sqlScript': ?sqlScript,
    };
  }

  factory DeploymentArtifactSqlArtifact.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifactSqlArtifact(
      additionalDependencies: (() {
        final guardedValue = map['additionalDependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sqlScript: (() {
        final guardedValue = map['sqlScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
