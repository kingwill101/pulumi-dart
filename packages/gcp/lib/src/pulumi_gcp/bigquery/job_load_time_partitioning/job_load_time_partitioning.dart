// ignore_for_file: unused_element, unnecessary_cast

class JobLoadTimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value.
  final String? expirationMs;

  /// If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if set, the table is partitioned by this field.
  /// The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  /// A wrapper is used here because an empty string is an invalid value.
  final String? field;

  /// The only type supported is DAY, which will generate one partition per day. Providing an empty string used to cause an error,
  /// but in OnePlatform the field will be treated as unset.
  final String type;

  JobLoadTimePartitioning({
    this.expirationMs,
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationMsValue = expirationMs;
    if (expirationMsValue != null) {
      map['expirationMs'] = expirationMsValue;
    }
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    map['type'] = type;
    return map;
  }

  factory JobLoadTimePartitioning.fromMap(Map<String, dynamic> map) {
    return JobLoadTimePartitioning(
      expirationMs:
          map['expirationMs'] == null ? null : map['expirationMs'] as String,
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}
