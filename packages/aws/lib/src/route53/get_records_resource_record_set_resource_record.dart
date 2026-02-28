// ignore_for_file: unused_element, unnecessary_cast

class GetRecordsResourceRecordSetResourceRecord {
  /// The DNS record value.
  final String value;

  /// Creates a new [GetRecordsResourceRecordSetResourceRecord].
  /// [value] The DNS record value.
  GetRecordsResourceRecordSetResourceRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GetRecordsResourceRecordSetResourceRecord.fromMap(
      Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetResourceRecord(
      value: map['value'] as String,
    );
  }
}
