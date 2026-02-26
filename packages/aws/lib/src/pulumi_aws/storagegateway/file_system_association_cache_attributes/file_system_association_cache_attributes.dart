// ignore_for_file: unused_element, unnecessary_cast

class FileSystemAssociationCacheAttributes {
  /// Refreshes a file share's cache by using Time To Live (TTL).
  /// TTL is the length of time since the last refresh after which access to the directory would cause the file gateway
  /// to first refresh that directory's contents from the Amazon S3 bucket. Valid Values: <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> or <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span> to <span pulumi-lang-nodejs="`2592000`" pulumi-lang-dotnet="`2592000`" pulumi-lang-go="`2592000`" pulumi-lang-python="`2592000`" pulumi-lang-yaml="`2592000`" pulumi-lang-java="`2592000`">`2592000`</span> seconds (5 minutes to 30 days). Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>
  final int? cacheStaleTimeoutInSeconds;

  FileSystemAssociationCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cacheStaleTimeoutInSecondsValue = cacheStaleTimeoutInSeconds;
    if (cacheStaleTimeoutInSecondsValue != null) {
      map['cacheStaleTimeoutInSeconds'] = cacheStaleTimeoutInSecondsValue;
    }
    return map;
  }

  factory FileSystemAssociationCacheAttributes.fromMap(
      Map<String, dynamic> map) {
    return FileSystemAssociationCacheAttributes(
      cacheStaleTimeoutInSeconds: map['cacheStaleTimeoutInSeconds'] == null
          ? null
          : map['cacheStaleTimeoutInSeconds'] as int,
    );
  }
}
