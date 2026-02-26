// ignore_for_file: unused_element, unnecessary_cast

class ResourceDescriptorResponse {
  final Map<String, String> annotations;
  final String content;
  final Map<String, String> digest;
  final String downloadLocation;
  final String mediaType;
  final String name;
  final String uri;

  ResourceDescriptorResponse({
    required this.annotations,
    required this.content,
    required this.digest,
    required this.downloadLocation,
    required this.mediaType,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['content'] = content;
    map['digest'] = digest;
    map['downloadLocation'] = downloadLocation;
    map['mediaType'] = mediaType;
    map['name'] = name;
    map['uri'] = uri;
    return map;
  }

  factory ResourceDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return ResourceDescriptorResponse(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      content: map['content'] as String,
      digest: (map['digest'] as Map).cast<String, String>(),
      downloadLocation: map['downloadLocation'] as String,
      mediaType: map['mediaType'] as String,
      name: map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}
