// ignore_for_file: unused_element, unnecessary_cast


/// File source details.
class FileSourceInfoResponse {
  /// File share ID.
  final String shareId;

  /// Creates a new [FileSourceInfoResponse].
  /// [shareId] File share ID.
  FileSourceInfoResponse({
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareId': shareId,
    };
  }

  factory FileSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return FileSourceInfoResponse(
      shareId: map['shareId'] as String,
    );
  }
}

