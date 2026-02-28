// ignore_for_file: unused_element, unnecessary_cast


/// `SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.
class SourceContextResponse {
  /// The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  final String fileName;

  /// Creates a new [SourceContextResponse].
  /// [fileName] The path-qualified name of the .proto file that contained the associated protobuf element. For example: `"google/protobuf/source_context.proto"`.
  SourceContextResponse({
    required this.fileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': fileName,
    };
  }

  factory SourceContextResponse.fromMap(Map<String, dynamic> map) {
    return SourceContextResponse(
      fileName: map['fileName'] as String,
    );
  }
}

