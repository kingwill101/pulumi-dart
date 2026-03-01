// ignore_for_file: unused_element, unnecessary_cast

import 'hash_response_containeranalysis_v1beta1.dart';

/// An entity that can have metadata. For example, a Docker image.
class ResourceResponseContaineranalysisV1beta1 {
  /// Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  final HashResponseContaineranalysisV1beta1 contentHash;

  /// Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  final String name;

  /// The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  final String uri;

  /// Creates a new [ResourceResponseContaineranalysisV1beta1].
  /// [contentHash] Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  /// [name] Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  /// [uri] The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  ResourceResponseContaineranalysisV1beta1({
    required this.contentHash,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash': contentHash.toMap(),
      'name': name,
      'uri': uri,
    };
  }

  factory ResourceResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceResponseContaineranalysisV1beta1(
      contentHash: HashResponseContaineranalysisV1beta1.fromMap(
        (map['contentHash'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}
