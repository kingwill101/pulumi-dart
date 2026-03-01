// ignore_for_file: unused_element, unnecessary_cast


class MxRecordRecord {
  /// The FQDN of the exchange to MX record points to.
  final String exchange;
  /// The preference of the MX record.
  final int preference;

  /// Creates a new [MxRecordRecord].
  /// [exchange] The FQDN of the exchange to MX record points to.
  /// [preference] The preference of the MX record.
  MxRecordRecord({
    required this.exchange,
    required this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': exchange,
      'preference': preference,
    };
  }

  factory MxRecordRecord.fromMap(Map<String, dynamic> map) {
    return MxRecordRecord(
      exchange: map['exchange'] as String,
      preference: map['preference'] as int,
    );
  }
}

