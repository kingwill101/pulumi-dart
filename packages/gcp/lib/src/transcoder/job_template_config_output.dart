// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigOutput {
  /// URI for the output file(s). For example, gs://my-bucket/outputs/.
  final String? uri;

  /// Creates a new [JobTemplateConfigOutput].
  /// [uri] URI for the output file(s). For example, gs://my-bucket/outputs/.
  JobTemplateConfigOutput({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory JobTemplateConfigOutput.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOutput(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
