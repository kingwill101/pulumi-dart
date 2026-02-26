// ignore_for_file: unused_element, unnecessary_cast

class JobConfigOutput {
  /// URI for the output file(s). For example, gs://my-bucket/outputs/.
  final String? uri;

  JobConfigOutput({
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

  factory JobConfigOutput.fromMap(Map<String, dynamic> map) {
    return JobConfigOutput(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
