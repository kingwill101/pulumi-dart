// ignore_for_file: unused_element, unnecessary_cast

class JobConfigOverlayImage {
  /// URI of the image in Cloud Storage. For example, gs://bucket/inputs/image.png.
  final String uri;

  JobConfigOverlayImage({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory JobConfigOverlayImage.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlayImage(
      uri: map['uri'] as String,
    );
  }
}
