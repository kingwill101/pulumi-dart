// ignore_for_file: unused_element, unnecessary_cast

/// Execution using a private Cloud Build pool.
class PrivatePoolResponse {
  /// Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final String artifactStorage;

  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  final String serviceAccount;

  /// Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/locations/{location}/workerPools/{pool}`.
  final String workerPool;

  PrivatePoolResponse({
    required this.artifactStorage,
    required this.serviceAccount,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactStorage'] = artifactStorage;
    map['serviceAccount'] = serviceAccount;
    map['workerPool'] = workerPool;
    return map;
  }

  factory PrivatePoolResponse.fromMap(Map<String, dynamic> map) {
    return PrivatePoolResponse(
      artifactStorage: map['artifactStorage'] as String,
      serviceAccount: map['serviceAccount'] as String,
      workerPool: map['workerPool'] as String,
    );
  }
}
