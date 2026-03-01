// ignore_for_file: unused_element, unnecessary_cast


class RecordsExclusiveResourceRecordSetResourceRecord {
  /// DNS record value.
  final String value;

  /// Creates a new [RecordsExclusiveResourceRecordSetResourceRecord].
  /// [value] DNS record value.
  RecordsExclusiveResourceRecordSetResourceRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory RecordsExclusiveResourceRecordSetResourceRecord.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetResourceRecord(
      value: map['value'] as String,
    );
  }
}

