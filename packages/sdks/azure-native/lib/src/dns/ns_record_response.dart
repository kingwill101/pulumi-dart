// ignore_for_file: unused_element, unnecessary_cast


/// An NS record.
class NsRecordResponse {
  /// The name server name for this NS record.
  final String? nsdname;

  /// Creates a new [NsRecordResponse].
  /// [nsdname] The name server name for this NS record.
  NsRecordResponse({
    this.nsdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsdname': ?nsdname,
    };
  }

  factory NsRecordResponse.fromMap(Map<String, dynamic> map) {
    return NsRecordResponse(
      nsdname: map['nsdname'] == null ? null : map['nsdname'] as String,
    );
  }
}

