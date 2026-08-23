// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NfsFileShareCacheAttributes {
  /// Refreshes a file share's cache by using Time To Live (TTL).
  /// TTL is the length of time since the last refresh after which access to the directory would cause the file gateway
  /// to first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)
  final pulumi.Input<int>? cacheStaleTimeoutInSeconds;

  /// Creates a new [NfsFileShareCacheAttributes].
  /// [cacheStaleTimeoutInSeconds] Refreshes a file share's cache by using Time To Live (TTL).
  const NfsFileShareCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheStaleTimeoutInSeconds': ?cacheStaleTimeoutInSeconds,
    };
  }

  factory NfsFileShareCacheAttributes.fromMap(Map<String, dynamic> map) {
    return NfsFileShareCacheAttributes(
      cacheStaleTimeoutInSeconds: (() { final guardedValue = map['cacheStaleTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
