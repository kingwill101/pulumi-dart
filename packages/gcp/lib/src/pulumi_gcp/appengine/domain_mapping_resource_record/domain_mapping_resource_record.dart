// ignore_for_file: unused_element, unnecessary_cast

class DomainMappingResourceRecord {
  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  final String? name;

  /// Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  final String? rrdata;

  /// Resource record type. Example: `AAAA`.
  /// Possible values are: `A`, `AAAA`, `CNAME`.
  final String? type;

  DomainMappingResourceRecord({
    this.name,
    this.rrdata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final rrdataValue = rrdata;
    if (rrdataValue != null) {
      map['rrdata'] = rrdataValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DomainMappingResourceRecord.fromMap(Map<String, dynamic> map) {
    return DomainMappingResourceRecord(
      name: map['name'] == null ? null : map['name'] as String,
      rrdata: map['rrdata'] == null ? null : map['rrdata'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
