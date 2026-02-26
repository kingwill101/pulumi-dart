// ignore_for_file: unused_element, unnecessary_cast

class RecordsExclusiveResourceRecordSetResourceRecord {
  /// DNS record value.
  final String value;

  RecordsExclusiveResourceRecordSetResourceRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory RecordsExclusiveResourceRecordSetResourceRecord.fromMap(
      Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetResourceRecord(
      value: map['value'] as String,
    );
  }
}
