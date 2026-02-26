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

  SoftwareRecipeArtifact({
    this.allowInsecure,
    this.gcs,
    required this.id,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInsecureValue = allowInsecure;
    if (allowInsecureValue != null) {
      map['allowInsecure'] = allowInsecureValue;
    }
    final gcsValue = gcs;
    if (gcsValue != null) {
      map['gcs'] = gcsValue.toMap();
    }
    map['id'] = id;
    final remoteValue = remote;
    if (remoteValue != null) {
      map['remote'] = remoteValue.toMap();
    }
    return map;
  }

  factory SoftwareRecipeArtifact.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifact(
      allowInsecure:
          map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null
          ? null
          : SoftwareRecipeArtifactGcs.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      remote: map['remote'] == null
          ? null
          : SoftwareRecipeArtifactRemote.fromMap(
              (map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
