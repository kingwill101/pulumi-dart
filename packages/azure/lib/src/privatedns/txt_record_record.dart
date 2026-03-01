// ignore_for_file: unused_element, unnecessary_cast


class TxtRecordRecord {
  /// The value of the TXT record. Max length: 1024 characters
  final String value;

  /// Creates a new [TxtRecordRecord].
  /// [value] The value of the TXT record. Max length: 1024 characters
  TxtRecordRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory TxtRecordRecord.fromMap(Map<String, dynamic> map) {
    return TxtRecordRecord(
      value: map['value'] as String,
    );
  }
}

