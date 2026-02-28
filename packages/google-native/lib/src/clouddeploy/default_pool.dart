// ignore_for_file: unused_element, unnecessary_cast

/// Execution using the default Cloud Build pool.
class DefaultPool {
  /// Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final String? artifactStorage;

  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  final String? serviceAccount;

  /// Creates a new [DefaultPool].
  /// [artifactStorage] Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  DefaultPool({
    this.artifactStorage,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactStorageValue = artifactStorage;
    if (artifactStorageValue != null) {
      map['artifactStorage'] = artifactStorageValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory DefaultPool.fromMap(Map<String, dynamic> map) {
    return DefaultPool(
      artifactStorage: map['artifactStorage'] == null
          ? null
          : map['artifactStorage'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}
