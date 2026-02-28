// ignore_for_file: unused_element, unnecessary_cast

class GetTableReplica {
  final String kmsKeyArn;
  final String regionName;

  /// Creates a new [GetTableReplica].
  /// [kmsKeyArn] Required.
  /// [regionName] Required.
  GetTableReplica({
    required this.kmsKeyArn,
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    map['regionName'] = regionName;
    return map;
  }

  factory GetTableReplica.fromMap(Map<String, dynamic> map) {
    return GetTableReplica(
      kmsKeyArn: map['kmsKeyArn'] as String,
      regionName: map['regionName'] as String,
    );
  }
}
