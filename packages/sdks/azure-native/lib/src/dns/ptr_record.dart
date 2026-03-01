// ignore_for_file: unused_element, unnecessary_cast


/// A PTR record.
class PtrRecord {
  /// The PTR target domain name for this PTR record.
  final String? ptrdname;

  /// Creates a new [PtrRecord].
  /// [ptrdname] The PTR target domain name for this PTR record.
  PtrRecord({
    this.ptrdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ptrdname': ?ptrdname,
    };
  }

  factory PtrRecord.fromMap(Map<String, dynamic> map) {
    return PtrRecord(
      ptrdname: map['ptrdname'] == null ? null : map['ptrdname'] as String,
    );
  }
}

