// ignore_for_file: unused_element, unnecessary_cast


class ImageShieldedInstanceInitialStatePk {
  /// The raw content in the secure keys file.
  /// A base64-encoded string.
  final String content;
  /// The file type of source file.
  final String? fileType;

  /// Creates a new [ImageShieldedInstanceInitialStatePk].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  ImageShieldedInstanceInitialStatePk({
    required this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fileType': ?fileType,
    };
  }

  factory ImageShieldedInstanceInitialStatePk.fromMap(Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialStatePk(
      content: map['content'] as String,
      fileType: map['fileType'] == null ? null : map['fileType'] as String,
    );
  }
}

