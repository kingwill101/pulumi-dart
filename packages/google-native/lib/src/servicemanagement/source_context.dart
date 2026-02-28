// ignore_for_file: unused_element, unnecessary_cast

/// `SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.
class SourceContext {
  /// The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  final String? fileName;

  /// Creates a new [SourceContext].
  /// [fileName] The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  SourceContext({
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

  factory SourceContext.fromMap(Map<String, dynamic> map) {
    return SourceContext(
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
    );
  }
}
