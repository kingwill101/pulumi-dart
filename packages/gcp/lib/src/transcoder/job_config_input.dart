// ignore_for_file: unused_element, unnecessary_cast

class JobConfigInput {
  /// A unique key for this input. Must be specified when using advanced mapping and edit lists.
  final String? key;

  /// URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, gs://bucket/inputs/file.mp4).
  /// If empty, the value is populated from Job.input_uri.
  final String? uri;

  /// Creates a new [JobConfigInput].
  /// [key] A unique key for this input. Must be specified when using advanced mapping and edit lists.
  /// [uri] URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, gs://bucket/inputs/file.mp4).
  JobConfigInput({
    this.key,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory JobConfigInput.fromMap(Map<String, dynamic> map) {
    return JobConfigInput(
      key: map['key'] == null ? null : map['key'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
