// ignore_for_file: unused_element, unnecessary_cast

import 'artifact_hashes_response.dart';

class GrafeasV1beta1IntotoArtifactResponse {
  final ArtifactHashesResponse hashes;
  final String resourceUri;

  /// Creates a new [GrafeasV1beta1IntotoArtifactResponse].
  /// [hashes] Required.
  /// [resourceUri] Required.
  GrafeasV1beta1IntotoArtifactResponse({
    required this.hashes,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hashes'] = hashes.toMap();
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory GrafeasV1beta1IntotoArtifactResponse.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoArtifactResponse(
      hashes: ArtifactHashesResponse.fromMap(
          (map['hashes'] as Map).cast<String, dynamic>()),
      resourceUri: map['resourceUri'] as String,
    );
  }
}
