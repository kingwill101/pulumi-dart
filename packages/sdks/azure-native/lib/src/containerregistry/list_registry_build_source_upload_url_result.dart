// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listRegistryBuildSourceUploadUrl.
class ListRegistryBuildSourceUploadUrlResult {
  /// The relative path to the source. This is used to submit the subsequent queue build request.
  final String? relativePath;
  /// The URL where the client can upload the source.
  final String? uploadUrl;

  /// Creates a new [ListRegistryBuildSourceUploadUrlResult].
  /// [relativePath] The relative path to the source. This is used to submit the subsequent queue build request.
  /// [uploadUrl] The URL where the client can upload the source.
  const ListRegistryBuildSourceUploadUrlResult({
    this.relativePath,
    this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativePath': ?relativePath,
      'uploadUrl': ?uploadUrl,
    };
  }

  factory ListRegistryBuildSourceUploadUrlResult.fromMap(Map<String, dynamic> map) {
    return ListRegistryBuildSourceUploadUrlResult(
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadUrl: (() { final guardedValue = map['uploadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

