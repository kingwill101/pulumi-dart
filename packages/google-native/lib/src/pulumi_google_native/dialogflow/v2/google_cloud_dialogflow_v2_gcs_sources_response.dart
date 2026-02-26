// ignore_for_file: unused_element, unnecessary_cast

/// Google Cloud Storage location for the inputs.
class GoogleCloudDialogflowV2GcsSourcesResponse {
  /// Google Cloud Storage URIs for the inputs. A URI is of the form: `gs://bucket/object-prefix-or-name` Whether a prefix or name is used depends on the use case.
  final List<String> uris;

  GoogleCloudDialogflowV2GcsSourcesResponse({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uris'] = uris;
    return map;
  }

  factory GoogleCloudDialogflowV2GcsSourcesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2GcsSourcesResponse(
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
