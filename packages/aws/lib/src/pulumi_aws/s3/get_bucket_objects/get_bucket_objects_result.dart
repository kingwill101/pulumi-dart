// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBucketObjects.
class GetBucketObjectsResult {
  final String bucket;

  /// List of any keys between <span pulumi-lang-nodejs="`prefix`" pulumi-lang-dotnet="`Prefix`" pulumi-lang-go="`prefix`" pulumi-lang-python="`prefix`" pulumi-lang-yaml="`prefix`" pulumi-lang-java="`prefix`">`prefix`</span> and the next occurrence of <span pulumi-lang-nodejs="`delimiter`" pulumi-lang-dotnet="`Delimiter`" pulumi-lang-go="`delimiter`" pulumi-lang-python="`delimiter`" pulumi-lang-yaml="`delimiter`" pulumi-lang-java="`delimiter`">`delimiter`</span> (i.e., similar to subdirectories of the <span pulumi-lang-nodejs="`prefix`" pulumi-lang-dotnet="`Prefix`" pulumi-lang-go="`prefix`" pulumi-lang-python="`prefix`" pulumi-lang-yaml="`prefix`" pulumi-lang-java="`prefix`">`prefix`</span> "directory"); the list is only returned when you specify <span pulumi-lang-nodejs="`delimiter`" pulumi-lang-dotnet="`Delimiter`" pulumi-lang-go="`delimiter`" pulumi-lang-python="`delimiter`" pulumi-lang-yaml="`delimiter`" pulumi-lang-java="`delimiter`">`delimiter`</span>
  final List<String> commonPrefixes;
  final String? delimiter;
  final String? encodingType;
  final bool? fetchOwner;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of strings representing object keys
  final List<String> keys;
  final int? maxKeys;

  /// List of strings representing object owner IDs (see <span pulumi-lang-nodejs="`fetchOwner`" pulumi-lang-dotnet="`FetchOwner`" pulumi-lang-go="`fetchOwner`" pulumi-lang-python="`fetch_owner`" pulumi-lang-yaml="`fetchOwner`" pulumi-lang-java="`fetchOwner`">`fetch_owner`</span> above)
  final List<String> owners;
  final String? prefix;
  final String region;
  final String? startAfter;

  GetBucketObjectsResult({
    required this.bucket,
    required this.commonPrefixes,
    this.delimiter,
    this.encodingType,
    this.fetchOwner,
    required this.id,
    required this.keys,
    this.maxKeys,
    required this.owners,
    this.prefix,
    required this.region,
    this.startAfter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['commonPrefixes'] = commonPrefixes;
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final encodingTypeValue = encodingType;
    if (encodingTypeValue != null) {
      map['encodingType'] = encodingTypeValue;
    }
    final fetchOwnerValue = fetchOwner;
    if (fetchOwnerValue != null) {
      map['fetchOwner'] = fetchOwnerValue;
    }
    map['id'] = id;
    map['keys'] = keys;
    final maxKeysValue = maxKeys;
    if (maxKeysValue != null) {
      map['maxKeys'] = maxKeysValue;
    }
    map['owners'] = owners;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    map['region'] = region;
    final startAfterValue = startAfter;
    if (startAfterValue != null) {
      map['startAfter'] = startAfterValue;
    }
    return map;
  }

  factory GetBucketObjectsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsResult(
      bucket: map['bucket'] as String,
      commonPrefixes: (map['commonPrefixes'] as List).cast<String>(),
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      encodingType:
          map['encodingType'] == null ? null : map['encodingType'] as String,
      fetchOwner: map['fetchOwner'] == null ? null : map['fetchOwner'] as bool,
      id: map['id'] as String,
      keys: (map['keys'] as List).cast<String>(),
      maxKeys: map['maxKeys'] == null ? null : map['maxKeys'] as int,
      owners: (map['owners'] as List).cast<String>(),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] as String,
      startAfter:
          map['startAfter'] == null ? null : map['startAfter'] as String,
    );
  }
}
