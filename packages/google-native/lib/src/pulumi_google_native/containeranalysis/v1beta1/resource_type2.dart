// ignore_for_file: unused_element, unnecessary_cast

import 'hash2.dart';

/// An entity that can have metadata. For example, a Docker image.
class ResourceType2 {
  /// Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  final Hash2? contentHash;

  /// Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  final String? name;

  /// The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  final String uri;

  ResourceType2({
    this.contentHash,
    this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentHashValue = contentHash;
    if (contentHashValue != null) {
      map['contentHash'] = contentHashValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory ResourceType2.fromMap(Map<String, dynamic> map) {
    return ResourceType2(
      contentHash: map['contentHash'] == null
          ? null
          : Hash2.fromMap((map['contentHash'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}
