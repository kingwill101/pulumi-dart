// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigOutput {
  /// URI for the output file(s). For example, gs://my-bucket/outputs/.
  final String? uri;

  /// Creates a new [JobTemplateConfigOutput].
  /// [uri] URI for the output file(s). For example, gs://my-bucket/outputs/.
  JobTemplateConfigOutput({
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

  factory JobTemplateConfigOutput.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOutput(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
