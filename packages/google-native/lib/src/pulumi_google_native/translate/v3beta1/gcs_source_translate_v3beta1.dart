// ignore_for_file: unused_element, unnecessary_cast

/// The Google Cloud Storage location for the input content.
class GcsSourceTranslateV3beta1 {
  /// Source data URI. For example, `gs://my_bucket/my_object`.
  final String inputUri;

  GcsSourceTranslateV3beta1({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    return map;
  }

  factory GcsSourceTranslateV3beta1.fromMap(Map<String, dynamic> map) {
    return GcsSourceTranslateV3beta1(
      inputUri: map['inputUri'] as String,
    );
  }
}
