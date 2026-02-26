// ignore_for_file: unused_element, unnecessary_cast

/// A DNS resource record.
class ResourceRecordResponse2 {
  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  final String name;

  /// Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  final String rrdata;

  /// Resource record type. Example: AAAA.
  final String type;

  ResourceRecordResponse2({
    required this.name,
    required this.rrdata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['rrdata'] = rrdata;
    map['type'] = type;
    return map;
  }

  factory ResourceRecordResponse2.fromMap(Map<String, dynamic> map) {
    return ResourceRecordResponse2(
      name: map['name'] as String,
      rrdata: map['rrdata'] as String,
      type: map['type'] as String,
    );
  }
}
