// ignore_for_file: unused_element, unnecessary_cast

/// Location of output file(s) in a Cloud Storage bucket.
class OutputType {
  /// URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty, the value is populated from Job.output_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String? uri;

  /// Creates a new [OutputType].
  /// [uri] URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty, the value is populated from Job.output_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  OutputType({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory OutputType.fromMap(Map<String, dynamic> map) {
    return OutputType(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
