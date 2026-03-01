// ignore_for_file: unused_element, unnecessary_cast


/// An NS record.
class NsRecord {
  /// The name server name for this NS record.
  final String? nsdname;

  /// Creates a new [NsRecord].
  /// [nsdname] The name server name for this NS record.
  NsRecord({
    this.nsdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsdname': ?nsdname,
    };
  }

  factory NsRecord.fromMap(Map<String, dynamic> map) {
    return NsRecord(
      nsdname: map['nsdname'] == null ? null : map['nsdname'] as String,
    );
  }
}

