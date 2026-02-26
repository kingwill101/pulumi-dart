// ignore_for_file: unused_element, unnecessary_cast

class ImageShieldedInstanceInitialStateKek {
  /// The raw content in the secure keys file.
  /// A base64-encoded string.
  final String content;

  /// The file type of source file.
  final String? fileType;

  ImageShieldedInstanceInitialStateKek({
    required this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    final fileTypeValue = fileType;
    if (fileTypeValue != null) {
      map['fileType'] = fileTypeValue;
    }
    return map;
  }

  factory ImageShieldedInstanceInitialStateKek.fromMap(
      Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialStateKek(
      content: map['content'] as String,
      fileType: map['fileType'] == null ? null : map['fileType'] as String,
    );
  }
}
