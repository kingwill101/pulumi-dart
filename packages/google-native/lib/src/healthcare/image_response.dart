// ignore_for_file: unused_element, unnecessary_cast

/// Raw bytes representing consent artifact content.
class ImageResponse {
  /// Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The Cloud Healthcare API service account must have the `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage location. The consent artifact content at this URI is copied to a Cloud Storage location managed by the Cloud Healthcare API. Responses to fetching requests return the consent artifact content in raw_bytes.
  final String gcsUri;

  /// Consent artifact content represented as a stream of bytes. This field is populated when returned in GetConsentArtifact response, but not included in CreateConsentArtifact and ListConsentArtifact response.
  final String rawBytes;

  /// Creates a new [ImageResponse].
  /// [gcsUri] Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The Cloud Healthcare API service account must have the `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage location. The consent artifact content at this URI is copied to a Cloud Storage location managed by the Cloud Healthcare API. Responses to fetching requests return the consent artifact content in raw_bytes.
  /// [rawBytes] Consent artifact content represented as a stream of bytes. This field is populated when returned in GetConsentArtifact response, but not included in CreateConsentArtifact and ListConsentArtifact response.
  ImageResponse({required this.gcsUri, required this.rawBytes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gcsUri': gcsUri, 'rawBytes': rawBytes};
  }

  factory ImageResponse.fromMap(Map<String, dynamic> map) {
    return ImageResponse(
      gcsUri: map['gcsUri'] as String,
      rawBytes: map['rawBytes'] as String,
    );
  }
}
