// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppResourceUploadUrl.
class GetAppResourceUploadUrlResult {
  /// Source relative path
  final String? relativePath;
  /// Upload URL
  final String? uploadUrl;

  /// Creates a new [GetAppResourceUploadUrlResult].
  /// [relativePath] Source relative path
  /// [uploadUrl] Upload URL
  GetAppResourceUploadUrlResult({
    this.relativePath,
    this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativePath': ?relativePath,
      'uploadUrl': ?uploadUrl,
    };
  }

  factory GetAppResourceUploadUrlResult.fromMap(Map<String, dynamic> map) {
    return GetAppResourceUploadUrlResult(
      relativePath: map['relativePath'] == null ? null : map['relativePath']! as String,
      uploadUrl: map['uploadUrl'] == null ? null : map['uploadUrl']! as String,
    );
  }
}

