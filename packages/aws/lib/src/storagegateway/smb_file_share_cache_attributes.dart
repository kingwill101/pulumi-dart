// ignore_for_file: unused_element, unnecessary_cast

class SmbFileShareCacheAttributes {
  /// Refreshes a file share's cache by using Time To Live (TTL).
  /// TTL is the length of time since the last refresh after which access to the directory would cause the file gateway
  /// to first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)
  final int? cacheStaleTimeoutInSeconds;

  /// Creates a new [SmbFileShareCacheAttributes].
  /// [cacheStaleTimeoutInSeconds] Refreshes a file share's cache by using Time To Live (TTL).
  SmbFileShareCacheAttributes({this.cacheStaleTimeoutInSeconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheStaleTimeoutInSeconds': ?cacheStaleTimeoutInSeconds,
    };
  }

  factory SmbFileShareCacheAttributes.fromMap(Map<String, dynamic> map) {
    return SmbFileShareCacheAttributes(
      cacheStaleTimeoutInSeconds: map['cacheStaleTimeoutInSeconds'] == null
          ? null
          : map['cacheStaleTimeoutInSeconds'] as int,
    );
  }
}
