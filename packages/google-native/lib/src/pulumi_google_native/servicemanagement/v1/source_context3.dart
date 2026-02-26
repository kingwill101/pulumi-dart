// ignore_for_file: unused_element, unnecessary_cast

/// `SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.
class SourceContext3 {
  /// The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  final String? fileName;

  SourceContext3({
    this.fileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileNameValue = fileName;
    if (fileNameValue != null) {
      map['fileName'] = fileNameValue;
    }
    return map;
  }

  factory SourceContext3.fromMap(Map<String, dynamic> map) {
    return SourceContext3(
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
    );
  }
}
