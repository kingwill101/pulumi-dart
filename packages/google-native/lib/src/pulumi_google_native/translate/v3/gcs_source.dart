// ignore_for_file: unused_element, unnecessary_cast

/// The Google Cloud Storage location for the input content.
class GcsSource {
  /// Source data URI. For example, `gs://my_bucket/my_object`.
  final String inputUri;

  GcsSource({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    return map;
  }

  factory GcsSource.fromMap(Map<String, dynamic> map) {
    return GcsSource(
      inputUri: map['inputUri'] as String,
    );
  }
}
