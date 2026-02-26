// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigOverlayImage {
  /// URI of the image in Cloud Storage. For example, gs://bucket/inputs/image.png.
  final String uri;

  JobTemplateConfigOverlayImage({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory JobTemplateConfigOverlayImage.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlayImage(
      uri: map['uri'] as String,
    );
  }
}
