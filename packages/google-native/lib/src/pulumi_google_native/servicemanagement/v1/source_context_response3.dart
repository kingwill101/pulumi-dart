// ignore_for_file: unused_element, unnecessary_cast

/// `SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.
class SourceContextResponse3 {
  /// The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  final String fileName;

  SourceContextResponse3({
    required this.fileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileName'] = fileName;
    return map;
  }

  factory SourceContextResponse3.fromMap(Map<String, dynamic> map) {
    return SourceContextResponse3(
      fileName: map['fileName'] as String,
    );
  }
}
