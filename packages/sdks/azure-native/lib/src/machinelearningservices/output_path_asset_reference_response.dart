// ignore_for_file: unused_element, unnecessary_cast


/// Reference to an asset via its path in a job output.
class OutputPathAssetReferenceResponse {
  /// ARM resource ID of the job.
  final String? jobId;
  /// The path of the file/directory in the job output.
  final String? path;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'OutputPath'.
  final String referenceType;

  /// Creates a new [OutputPathAssetReferenceResponse].
  /// [jobId] ARM resource ID of the job.
  /// [path] The path of the file/directory in the job output.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  OutputPathAssetReferenceResponse({
    this.jobId,
    this.path,
    required this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': ?jobId,
      'path': ?path,
      'referenceType': referenceType,
    };
  }

  factory OutputPathAssetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return OutputPathAssetReferenceResponse(
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      referenceType: map['referenceType'] as String,
    );
  }
}

