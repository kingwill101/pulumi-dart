// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemAssociationCacheAttributes {
  /// Refreshes a file share's cache by using Time To Live (TTL).
  /// TTL is the length of time since the last refresh after which access to the directory would cause the file gateway
  /// to first refresh that directory's contents from the Amazon S3 bucket. Valid Values: `0` or `300` to `2592000` seconds (5 minutes to 30 days). Defaults to `0`
  final pulumi.Input<int>? cacheStaleTimeoutInSeconds;

  /// Creates a new [FileSystemAssociationCacheAttributes].
  /// [cacheStaleTimeoutInSeconds] Refreshes a file share's cache by using Time To Live (TTL).
  const FileSystemAssociationCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheStaleTimeoutInSeconds': ?cacheStaleTimeoutInSeconds,
    };
  }

  factory FileSystemAssociationCacheAttributes.fromMap(Map<String, dynamic> map) {
    return FileSystemAssociationCacheAttributes(
      cacheStaleTimeoutInSeconds: (() { final guardedValue = map['cacheStaleTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

