// ignore_for_file: unused_element, unnecessary_cast

/// `SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.
class SourceContextResponseServicemanagementV1 {
  /// The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  final String fileName;

  SourceContextResponseServicemanagementV1({
    required this.fileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileName'] = fileName;
    return map;
  }

  factory SourceContextResponseServicemanagementV1.fromMap(
      Map<String, dynamic> map) {
    return SourceContextResponseServicemanagementV1(
      fileName: map['fileName'] as String,
    );
  }
}
