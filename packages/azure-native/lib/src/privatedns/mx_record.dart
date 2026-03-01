// ignore_for_file: unused_element, unnecessary_cast


/// An MX record.
class MxRecord {
  /// The domain name of the mail host for this MX record.
  final String? exchange;
  /// The preference value for this MX record.
  final int? preference;

  /// Creates a new [MxRecord].
  /// [exchange] The domain name of the mail host for this MX record.
  /// [preference] The preference value for this MX record.
  MxRecord({
    this.exchange,
    this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': ?exchange,
      'preference': ?preference,
    };
  }

  factory MxRecord.fromMap(Map<String, dynamic> map) {
    return MxRecord(
      exchange: map['exchange'] == null ? null : map['exchange'] as String,
      preference: map['preference'] == null ? null : map['preference'] as int,
    );
  }
}

