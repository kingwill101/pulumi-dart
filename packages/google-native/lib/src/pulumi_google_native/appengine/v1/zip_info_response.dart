// ignore_for_file: unused_element, unnecessary_cast

/// The zip file information for a zip deployment.
class ZipInfoResponse {
  /// An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or equal to the actual number of files. Used for optimizing performance; if not provided, deployment may be slow.
  final int filesCount;

  /// URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the form 'http(s)://storage.googleapis.com//'.
  final String sourceUrl;

  ZipInfoResponse({
    required this.filesCount,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filesCount'] = filesCount;
    map['sourceUrl'] = sourceUrl;
    return map;
  }

  factory ZipInfoResponse.fromMap(Map<String, dynamic> map) {
    return ZipInfoResponse(
      filesCount: map['filesCount'] as int,
      sourceUrl: map['sourceUrl'] as String,
    );
  }
}
