// ignore_for_file: unused_element, unnecessary_cast


class InstancePersonality {
  /// The contents of the file. Limited to 255 bytes.
  final String content;
  /// The absolute path of the destination file.
  final String file;

  /// Creates a new [InstancePersonality].
  /// [content] The contents of the file. Limited to 255 bytes.
  /// [file] The absolute path of the destination file.
  InstancePersonality({
    required this.content,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'file': file,
    };
  }

  factory InstancePersonality.fromMap(Map<String, dynamic> map) {
    return InstancePersonality(
      content: map['content'] as String,
      file: map['file'] as String,
    );
  }
}

