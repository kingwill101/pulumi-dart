// ignore_for_file: unused_element, unnecessary_cast

import 'hash_response3.dart';

/// An entity that can have metadata. For example, a Docker image.
class ResourceResponse2 {
  /// Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  final HashResponse3 contentHash;

  /// Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  final String name;

  /// The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  final String uri;

  ResourceResponse2({
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

  factory ResourceResponse2.fromMap(Map<String, dynamic> map) {
    return ResourceResponse2(
      contentHash: HashResponse3.fromMap(
          (map['contentHash'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}
