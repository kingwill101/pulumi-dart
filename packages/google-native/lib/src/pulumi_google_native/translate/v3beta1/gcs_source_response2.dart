// ignore_for_file: unused_element, unnecessary_cast

/// The Google Cloud Storage location for the input content.
class GcsSourceResponse2 {
  /// Source data URI. For example, `gs://my_bucket/my_object`.
  final String inputUri;

  GcsSourceResponse2({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    return map;
  }

  factory GcsSourceResponse2.fromMap(Map<String, dynamic> map) {
    return GcsSourceResponse2(
      inputUri: map['inputUri'] as String,
    );
  }
}
