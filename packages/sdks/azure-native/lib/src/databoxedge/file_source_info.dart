// ignore_for_file: unused_element, unnecessary_cast


/// File source details.
class FileSourceInfo {
  /// File share ID.
  final String shareId;

  /// Creates a new [FileSourceInfo].
  /// [shareId] File share ID.
  FileSourceInfo({
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareId': shareId,
    };
  }

  factory FileSourceInfo.fromMap(Map<String, dynamic> map) {
    return FileSourceInfo(
      shareId: map['shareId'] as String,
    );
  }
}

