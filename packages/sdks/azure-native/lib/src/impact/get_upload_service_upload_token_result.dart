// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUploadServiceUploadToken.
class GetUploadServiceUploadTokenResult {
  /// The SAS token URL for uploading
  final String uploadUrl;

  /// Creates a new [GetUploadServiceUploadTokenResult].
  /// [uploadUrl] The SAS token URL for uploading
  const GetUploadServiceUploadTokenResult({
    required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uploadUrl': uploadUrl,
    };
  }

  factory GetUploadServiceUploadTokenResult.fromMap(Map<String, dynamic> map) {
    return GetUploadServiceUploadTokenResult(
      uploadUrl: map['uploadUrl'] as String,
    );
  }
}
