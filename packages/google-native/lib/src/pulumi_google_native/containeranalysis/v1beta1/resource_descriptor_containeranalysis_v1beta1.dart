// ignore_for_file: unused_element, unnecessary_cast

class ResourceDescriptorContaineranalysisV1beta1 {
  final Map<String, String>? annotations;
  final String? content;
  final Map<String, String>? digest;
  final String? downloadLocation;
  final String? mediaType;
  final String? name;
  final String? uri;

  ResourceDescriptorContaineranalysisV1beta1({
    this.annotations,
    this.content,
    this.digest,
    this.downloadLocation,
    this.mediaType,
    this.name,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final downloadLocationValue = downloadLocation;
    if (downloadLocationValue != null) {
      map['downloadLocation'] = downloadLocationValue;
    }
    final mediaTypeValue = mediaType;
    if (mediaTypeValue != null) {
      map['mediaType'] = mediaTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory ResourceDescriptorContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ResourceDescriptorContaineranalysisV1beta1(
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
