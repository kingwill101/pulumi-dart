// ignore_for_file: unused_element, unnecessary_cast

class ResourceDescriptor {
  final Map<String, String>? annotations;
  final String? content;
  final Map<String, String>? digest;
  final String? downloadLocation;
  final String? mediaType;
  final String? name;
  final String? uri;

  /// Creates a new [ResourceDescriptor].
  /// [annotations] Optional.
  /// [content] Optional.
  /// [digest] Optional.
  /// [downloadLocation] Optional.
  /// [mediaType] Optional.
  /// [name] Optional.
  /// [uri] Optional.
  ResourceDescriptor({
    this.annotations,
    this.content,
    this.digest,
    this.downloadLocation,
    this.mediaType,
    this.name,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'content': ?content,
      'digest': ?digest,
      'downloadLocation': ?downloadLocation,
      'mediaType': ?mediaType,
      'name': ?name,
      'uri': ?uri,
    };
  }

  factory ResourceDescriptor.fromMap(Map<String, dynamic> map) {
    return ResourceDescriptor(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      content: map['content'] == null ? null : map['content'] as String,
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      downloadLocation: map['downloadLocation'] == null
          ? null
          : map['downloadLocation'] as String,
      mediaType: map['mediaType'] == null ? null : map['mediaType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
