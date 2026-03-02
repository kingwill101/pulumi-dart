// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBuildServiceResourceUploadUrl.
class GetBuildServiceResourceUploadUrlResult {
  /// Source relative path
  final String? relativePath;
  /// Upload URL
  final String? uploadUrl;

  /// Creates a new [GetBuildServiceResourceUploadUrlResult].
  /// [relativePath] Source relative path
  /// [uploadUrl] Upload URL
  GetBuildServiceResourceUploadUrlResult({
    this.relativePath,
    this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativePath': ?relativePath,
      'uploadUrl': ?uploadUrl,
    };
  }

  factory GetBuildServiceResourceUploadUrlResult.fromMap(Map<String, dynamic> map) {
    return GetBuildServiceResourceUploadUrlResult(
      relativePath: map['relativePath'] == null ? null : map['relativePath']! as String,
      uploadUrl: map['uploadUrl'] == null ? null : map['uploadUrl']! as String,
    );
  }
}

