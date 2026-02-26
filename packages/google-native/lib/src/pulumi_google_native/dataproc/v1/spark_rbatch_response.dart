// ignore_for_file: unused_element, unnecessary_cast

/// A configuration for running an Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) batch workload.
class SparkRBatchResponse {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String> archiveUris;

  /// Optional. The arguments to pass to the Spark driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final List<String> args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor.
  final List<String> fileUris;

  /// The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.
  final String mainRFileUri;

  SparkRBatchResponse({
    required this.archiveUris,
    required this.args,
    required this.fileUris,
    required this.mainRFileUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveUris'] = archiveUris;
    map['args'] = args;
    map['fileUris'] = fileUris;
    map['mainRFileUri'] = mainRFileUri;
    return map;
  }

  factory SparkRBatchResponse.fromMap(Map<String, dynamic> map) {
    return SparkRBatchResponse(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      args: (map['args'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      mainRFileUri: map['mainRFileUri'] as String,
    );
  }
}
