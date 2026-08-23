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
  const GetBuildServiceResourceUploadUrlResult({
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
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadUrl: (() { final guardedValue = map['uploadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
