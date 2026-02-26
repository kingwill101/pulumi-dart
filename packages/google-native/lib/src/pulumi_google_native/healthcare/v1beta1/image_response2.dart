// ignore_for_file: unused_element, unnecessary_cast

/// Raw bytes representing consent artifact content.
class ImageResponse2 {
  /// Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The Cloud Healthcare API service account must have the `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage location. The consent artifact content at this URI is copied to a Cloud Storage location managed by the Cloud Healthcare API. Responses to fetching requests return the consent artifact content in raw_bytes.
  final String gcsUri;

  /// Consent artifact content represented as a stream of bytes. This field is populated when returned in GetConsentArtifact response, but not included in CreateConsentArtifact and ListConsentArtifact response.
  final String rawBytes;

  ImageResponse2({
    required this.gcsUri,
    required this.rawBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsUri'] = gcsUri;
    map['rawBytes'] = rawBytes;
    return map;
  }

  factory ImageResponse2.fromMap(Map<String, dynamic> map) {
    return ImageResponse2(
      gcsUri: map['gcsUri'] as String,
      rawBytes: map['rawBytes'] as String,
    );
  }
}
