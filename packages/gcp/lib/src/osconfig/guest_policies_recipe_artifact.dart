// ignore_for_file: unused_element, unnecessary_cast

import 'guest_policies_recipe_artifact_gcs.dart';
import 'guest_policies_recipe_artifact_remote.dart';

class GuestPoliciesRecipeArtifact {
  /// Defaults to false. When false, recipes are subject to validations based on the artifact type:
  /// Remote: A checksum must be specified, and only protocols with transport-layer security are permitted.
  /// GCS: An object generation number must be specified.
  final bool? allowInsecure;

  /// A Google Cloud Storage artifact.
  /// Structure is documented below.
  final GuestPoliciesRecipeArtifactGcs? gcs;

  /// Id of the artifact, which the installation and update steps of this recipe can reference.
  /// Artifacts in a recipe cannot have the same id.
  final String id;

  /// A generic remote artifact.
  /// Structure is documented below.
  final GuestPoliciesRecipeArtifactRemote? remote;

  /// Creates a new [GuestPoliciesRecipeArtifact].
  /// [allowInsecure] Defaults to false. When false, recipes are subject to validations based on the artifact type:
  /// [gcs] A Google Cloud Storage artifact.
  /// [id] Id of the artifact, which the installation and update steps of this recipe can reference.
  /// [remote] A generic remote artifact.
  GuestPoliciesRecipeArtifact({
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

  factory GuestPoliciesRecipeArtifact.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeArtifact(
      allowInsecure:
          map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null
          ? null
          : GuestPoliciesRecipeArtifactGcs.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      remote: map['remote'] == null
          ? null
          : GuestPoliciesRecipeArtifactRemote.fromMap(
              (map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
