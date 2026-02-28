// ignore_for_file: unused_element, unnecessary_cast

class DomainMappingStatusResourceRecord {
  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  final String? name;

  /// (Output)
  /// Data for this record. Values vary by record type, as defined in RFC 1035
  /// (section 5) and RFC 1034 (section 3.6.1).
  final String? rrdata;

  /// Resource record type. Example: `AAAA`.
  /// Possible values are: `A`, `AAAA`, `CNAME`.
  final String? type;

  /// Creates a new [DomainMappingStatusResourceRecord].
  /// [name] Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  /// [rrdata] (Output)
  /// [type] Resource record type. Example: `AAAA`.
  DomainMappingStatusResourceRecord({
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

  factory DomainMappingStatusResourceRecord.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatusResourceRecord(
      name: map['name'] == null ? null : map['name'] as String,
      rrdata: map['rrdata'] == null ? null : map['rrdata'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
