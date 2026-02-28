// ignore_for_file: unused_element, unnecessary_cast

import 'artifact_hashes.dart';

class GrafeasV1beta1IntotoArtifact {
  final ArtifactHashes? hashes;
  final String? resourceUri;

  /// Creates a new [GrafeasV1beta1IntotoArtifact].
  /// [hashes] Optional.
  /// [resourceUri] Optional.
  GrafeasV1beta1IntotoArtifact({
    this.hashes,
    this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hashesValue = hashes;
    if (hashesValue != null) {
      map['hashes'] = hashesValue.toMap();
    }
    final resourceUriValue = resourceUri;
    if (resourceUriValue != null) {
      map['resourceUri'] = resourceUriValue;
    }
    return map;
  }

  factory GrafeasV1beta1IntotoArtifact.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoArtifact(
      hashes: map['hashes'] == null
          ? null
          : ArtifactHashes.fromMap(
              (map['hashes'] as Map).cast<String, dynamic>()),
      resourceUri:
          map['resourceUri'] == null ? null : map['resourceUri'] as String,
    );
  }
}
