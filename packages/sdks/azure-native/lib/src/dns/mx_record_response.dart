// ignore_for_file: unused_element, unnecessary_cast


/// An MX record.
class MxRecordResponse {
  /// The domain name of the mail host for this MX record.
  final String? exchange;
  /// The preference value for this MX record.
  final int? preference;

  /// Creates a new [MxRecordResponse].
  /// [exchange] The domain name of the mail host for this MX record.
  /// [preference] The preference value for this MX record.
  MxRecordResponse({
    this.exchange,
    this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': ?exchange,
      'preference': ?preference,
    };
  }

  factory MxRecordResponse.fromMap(Map<String, dynamic> map) {
    return MxRecordResponse(
      exchange: map['exchange'] == null ? null : map['exchange'] as String,
      preference: map['preference'] == null ? null : map['preference'] as int,
    );
  }
}

