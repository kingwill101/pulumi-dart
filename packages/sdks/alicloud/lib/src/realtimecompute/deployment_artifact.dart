// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_artifact_jar_artifact.dart';
import 'deployment_artifact_python_artifact.dart';
import 'deployment_artifact_sql_artifact.dart';

class DeploymentArtifact {
  /// JarArtifact See `jar_artifact` below.
  final pulumi.Input<DeploymentArtifactJarArtifact>? jarArtifact;
  /// Artifact type
  final pulumi.Input<String> kind;
  /// PythonArtifact See `python_artifact` below.
  final pulumi.Input<DeploymentArtifactPythonArtifact>? pythonArtifact;
  /// SqlArtifact See `sql_artifact` below.
  final pulumi.Input<DeploymentArtifactSqlArtifact>? sqlArtifact;

  /// Creates a new [DeploymentArtifact].
  /// [jarArtifact] JarArtifact See `jar_artifact` below.
  /// [kind] Artifact type
  /// [pythonArtifact] PythonArtifact See `python_artifact` below.
  /// [sqlArtifact] SqlArtifact See `sql_artifact` below.
  const DeploymentArtifact({
    this.jarArtifact,
    required this.kind,
    this.pythonArtifact,
    this.sqlArtifact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarArtifact': ?pulumi.Input.mapOptionalInputValue<DeploymentArtifactJarArtifact, Map<String, dynamic>>(jarArtifact, (value) => value.toMap()),
      'kind': kind,
      'pythonArtifact': ?pulumi.Input.mapOptionalInputValue<DeploymentArtifactPythonArtifact, Map<String, dynamic>>(pythonArtifact, (value) => value.toMap()),
      'sqlArtifact': ?pulumi.Input.mapOptionalInputValue<DeploymentArtifactSqlArtifact, Map<String, dynamic>>(sqlArtifact, (value) => value.toMap()),
    };
  }

  factory DeploymentArtifact.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifact(
      jarArtifact: (() { final guardedValue = map['jarArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentArtifactJarArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      pythonArtifact: (() { final guardedValue = map['pythonArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentArtifactPythonArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlArtifact: (() { final guardedValue = map['sqlArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentArtifactSqlArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

