// ignore_for_file: unused_element, unnecessary_cast

/// Google Cloud Storage location for a Dialogflow operation that writes or exports objects (e.g. exported agent or transcripts) outside of Dialogflow.
class GoogleCloudDialogflowCxV3beta1GcsDestinationResponse {
  /// The Google Cloud Storage URI for the exported objects. A URI is of the form: `gs://bucket/object-name-or-prefix` Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  final String uri;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1GcsDestinationResponse].
  /// [uri] The Google Cloud Storage URI for the exported objects. A URI is of the form: `gs://bucket/object-name-or-prefix` Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  GoogleCloudDialogflowCxV3beta1GcsDestinationResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1GcsDestinationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1GcsDestinationResponse(
      uri: map['uri'] as String,
    );
  }
}
