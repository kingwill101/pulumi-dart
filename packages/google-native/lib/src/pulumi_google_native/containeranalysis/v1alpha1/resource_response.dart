// ignore_for_file: unused_element, unnecessary_cast

import 'hash_response_containeranalysis_v1alpha1.dart';

/// Resource is an entity that can have metadata. E.g., a Docker image.
class ResourceResponse {
  /// The hash of the resource content. E.g., the Docker digest.
  final HashResponseContaineranalysisV1alpha1 contentHash;

  /// The name of the resource. E.g., the name of a Docker image - "Debian".
  final String name;

  /// The unique URI of the resource. E.g., "https://gcr.io/project/image@sha256:foo" for a Docker image.
  final String uri;

  ResourceResponse({
    required this.contentHash,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentHash'] = contentHash.toMap();
    map['name'] = name;
    map['uri'] = uri;
    return map;
  }

  factory ResourceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceResponse(
      contentHash: HashResponseContaineranalysisV1alpha1.fromMap(
          (map['contentHash'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}
