// ignore_for_file: unused_element, unnecessary_cast


class FileSystemAssociationCacheAttributes {
  /// Refreshes a file share's cache by using Time To Live (TTL).
  /// TTL is the length of time since the last refresh after which access to the directory would cause the file gateway
  /// to first refresh that directory's contents from the Amazon S3 bucket. Valid Values: `0` or `300` to `2592000` seconds (5 minutes to 30 days). Defaults to `0`
  final int? cacheStaleTimeoutInSeconds;

  /// Creates a new [FileSystemAssociationCacheAttributes].
  /// [cacheStaleTimeoutInSeconds] Refreshes a file share's cache by using Time To Live (TTL).
  FileSystemAssociationCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheStaleTimeoutInSeconds': ?cacheStaleTimeoutInSeconds,
    };
  }

  factory FileSystemAssociationCacheAttributes.fromMap(Map<String, dynamic> map) {
    return FileSystemAssociationCacheAttributes(
      cacheStaleTimeoutInSeconds: map['cacheStaleTimeoutInSeconds'] == null ? null : map['cacheStaleTimeoutInSeconds'] as int,
    );
  }
}

