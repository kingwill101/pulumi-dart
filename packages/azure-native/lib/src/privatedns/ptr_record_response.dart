// ignore_for_file: unused_element, unnecessary_cast


/// A PTR record.
class PtrRecordResponse {
  /// The PTR target domain name for this PTR record.
  final String? ptrdname;

  /// Creates a new [PtrRecordResponse].
  /// [ptrdname] The PTR target domain name for this PTR record.
  PtrRecordResponse({
    this.ptrdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ptrdname': ?ptrdname,
    };
  }

  factory PtrRecordResponse.fromMap(Map<String, dynamic> map) {
    return PtrRecordResponse(
      ptrdname: map['ptrdname'] == null ? null : map['ptrdname'] as String,
    );
  }
}

