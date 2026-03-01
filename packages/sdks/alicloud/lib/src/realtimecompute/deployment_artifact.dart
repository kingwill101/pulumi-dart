// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_artifact_jar_artifact.dart';
import 'deployment_artifact_python_artifact.dart';
import 'deployment_artifact_sql_artifact.dart';

class DeploymentArtifact {
  /// JarArtifact See `jar_artifact` below.
  final DeploymentArtifactJarArtifact? jarArtifact;
  /// Artifact type
  final String kind;
  /// PythonArtifact See `python_artifact` below.
  final DeploymentArtifactPythonArtifact? pythonArtifact;
  /// SqlArtifact See `sql_artifact` below.
  final DeploymentArtifactSqlArtifact? sqlArtifact;

  /// Creates a new [DeploymentArtifact].
  /// [jarArtifact] JarArtifact See `jar_artifact` below.
  /// [kind] Artifact type
  /// [pythonArtifact] PythonArtifact See `python_artifact` below.
  /// [sqlArtifact] SqlArtifact See `sql_artifact` below.
  DeploymentArtifact({
    this.jarArtifact,
    required this.kind,
    this.pythonArtifact,
    this.sqlArtifact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarArtifact': ?jarArtifact == null ? null : jarArtifact!.toMap(),
      'kind': kind,
      'pythonArtifact': ?pythonArtifact == null ? null : pythonArtifact!.toMap(),
      'sqlArtifact': ?sqlArtifact == null ? null : sqlArtifact!.toMap(),
    };
  }

  factory DeploymentArtifact.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifact(
      jarArtifact: map['jarArtifact'] == null ? null : DeploymentArtifactJarArtifact.fromMap((map['jarArtifact'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      pythonArtifact: map['pythonArtifact'] == null ? null : DeploymentArtifactPythonArtifact.fromMap((map['pythonArtifact'] as Map).cast<String, dynamic>()),
      sqlArtifact: map['sqlArtifact'] == null ? null : DeploymentArtifactSqlArtifact.fromMap((map['sqlArtifact'] as Map).cast<String, dynamic>()),
    );
  }
}

