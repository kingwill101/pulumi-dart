// ignore_for_file: unused_element, unnecessary_cast


/// Location of output file(s) in a Cloud Storage bucket.
class OutputResponse {
  /// URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty, the value is populated from Job.output_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String uri;

  /// Creates a new [OutputResponse].
  /// [uri] URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty, the value is populated from Job.output_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  OutputResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory OutputResponse.fromMap(Map<String, dynamic> map) {
    return OutputResponse(
      uri: map['uri'] as String,
    );
  }
}

