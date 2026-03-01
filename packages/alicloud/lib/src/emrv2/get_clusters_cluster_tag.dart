// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterTag {
  final String key;
  final String value;

  /// Creates a new [GetClustersClusterTag].
  /// [key] Required.
  /// [value] Required.
  GetClustersClusterTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetClustersClusterTag.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

