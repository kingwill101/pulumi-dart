// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPartition.
class GetPartitionResult {
  /// Optional. The etag for this partition.
  final String etag;

  /// Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  final String location;

  /// Partition values used in the HTTP URL must be double encoded. For example, url_encode(url_encode(value)) can be used to encode "US:CA/CA#Sunnyvale so that the request URL ends with "/partitions/US%253ACA/CA%2523Sunnyvale". The name field in the response retains the encoded format.
  final String name;

  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  final List<String> values;

  GetPartitionResult({
    required this.etag,
    required this.location,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['location'] = location;
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetPartitionResult.fromMap(Map<String, dynamic> map) {
    return GetPartitionResult(
      etag: map['etag'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
