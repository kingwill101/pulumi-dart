// ignore_for_file: unused_element, unnecessary_cast

import 'software_recipe_artifact_gcs.dart';
import 'software_recipe_artifact_remote.dart';

/// Specifies a resource to be used in the recipe.
class SoftwareRecipeArtifact {
  /// Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  final bool? allowInsecure;
  /// A Google Cloud Storage artifact.
  final SoftwareRecipeArtifactGcs? gcs;
  /// Id of the artifact, which the installation and update steps of this recipe can reference. Artifacts in a recipe cannot have the same id.
  final String id;
  /// A generic remote artifact.
  final SoftwareRecipeArtifactRemote? remote;

  /// Creates a new [SoftwareRecipeArtifact].
  /// [allowInsecure] Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  /// [gcs] A Google Cloud Storage artifact.
  /// [id] Id of the artifact, which the installation and update steps of this recipe can reference. Artifacts in a recipe cannot have the same id.
  /// [remote] A generic remote artifact.
  SoftwareRecipeArtifact({
    this.allowInsecure,
    this.gcs,
    required this.id,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?gcs == null ? null : gcs!.toMap(),
      'id': id,
      'remote': ?remote == null ? null : remote!.toMap(),
    };
  }

  factory SoftwareRecipeArtifact.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifact(
      allowInsecure: map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null ? null : SoftwareRecipeArtifactGcs.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      remote: map['remote'] == null ? null : SoftwareRecipeArtifactRemote.fromMap((map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}

