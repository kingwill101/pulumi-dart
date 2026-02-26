// ignore_for_file: unused_element, unnecessary_cast

/// A set of properties that uniquely identify a given Docker image.
class Fingerprint2 {
  /// The layer-id of the final layer in the Docker image's v1 representation. This field can be used as a filter in list requests.
  final String? v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  final List<String>? v2Blob;

  Fingerprint2({
    this.v1Name,
    this.v2Blob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final v1NameValue = v1Name;
    if (v1NameValue != null) {
      map['v1Name'] = v1NameValue;
    }
    final v2BlobValue = v2Blob;
    if (v2BlobValue != null) {
      map['v2Blob'] = v2BlobValue;
    }
    return map;
  }

  factory Fingerprint2.fromMap(Map<String, dynamic> map) {
    return Fingerprint2(
      v1Name: map['v1Name'] == null ? null : map['v1Name'] as String,
      v2Blob:
          map['v2Blob'] == null ? null : (map['v2Blob'] as List).cast<String>(),
    );
  }
}
