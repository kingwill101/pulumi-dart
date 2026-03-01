// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getObjects.
class GetObjectsResult {
  final String bucket;
  /// List of any keys between `prefix` and the next occurrence of `delimiter` (i.e., similar to subdirectories of the `prefix` "directory"); the list is only returned when you specify `delimiter`
  final List<String> commonPrefixes;
  final String? delimiter;
  final String? encodingType;
  final bool? fetchOwner;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of strings representing object keys
  final List<String> keys;
  final int? maxKeys;
  /// List of strings representing object owner IDs (see `fetch_owner` above)
  final List<String> owners;
  final String? prefix;
  final String region;
  /// If present, indicates that the requester was successfully charged for the request.
  final String requestCharged;
  final String? requestPayer;
  final String? startAfter;

  /// Creates a new [GetObjectsResult].
  /// [bucket] Required.
  /// [commonPrefixes] List of any keys between `prefix` and the next occurrence of `delimiter` (i.e., similar to subdirectories of the `prefix` "directory"); the list is only returned when you specify `delimiter`
  /// [delimiter] Optional.
  /// [encodingType] Optional.
  /// [fetchOwner] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keys] List of strings representing object keys
  /// [maxKeys] Optional.
  /// [owners] List of strings representing object owner IDs (see `fetch_owner` above)
  /// [prefix] Optional.
  /// [region] Required.
  /// [requestCharged] If present, indicates that the requester was successfully charged for the request.
  /// [requestPayer] Optional.
  /// [startAfter] Optional.
  GetObjectsResult({
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
    required this.requestCharged,
    this.requestPayer,
    this.startAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'commonPrefixes': commonPrefixes,
      'delimiter': ?delimiter,
      'encodingType': ?encodingType,
      'fetchOwner': ?fetchOwner,
      'id': id,
      'keys': keys,
      'maxKeys': ?maxKeys,
      'owners': owners,
      'prefix': ?prefix,
      'region': region,
      'requestCharged': requestCharged,
      'requestPayer': ?requestPayer,
      'startAfter': ?startAfter,
    };
  }

  factory GetObjectsResult.fromMap(Map<String, dynamic> map) {
    return GetObjectsResult(
      bucket: map['bucket'] as String,
      commonPrefixes: (map['commonPrefixes'] as List).cast<String>(),
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      encodingType: map['encodingType'] == null ? null : map['encodingType'] as String,
      fetchOwner: map['fetchOwner'] == null ? null : map['fetchOwner'] as bool,
      id: map['id'] as String,
      keys: (map['keys'] as List).cast<String>(),
      maxKeys: map['maxKeys'] == null ? null : map['maxKeys'] as int,
      owners: (map['owners'] as List).cast<String>(),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] as String,
      requestCharged: map['requestCharged'] as String,
      requestPayer: map['requestPayer'] == null ? null : map['requestPayer'] as String,
      startAfter: map['startAfter'] == null ? null : map['startAfter'] as String,
    );
  }
}

