// ignore_for_file: unused_element, unnecessary_cast

import 'resource_record_type.dart';

/// A DNS resource record.
class ResourceRecord {
  /// Relative name of the object affected by this record. Only applicable for `CNAME` records. Example: 'www'.
  final String? name;

  /// Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  final String? rrdata;

  /// Resource record type. Example: `AAAA`.
  final ResourceRecordType? type;

  /// Creates a new [ResourceRecord].
  /// [name] Relative name of the object affected by this record. Only applicable for `CNAME` records. Example: 'www'.
  /// [rrdata] Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  /// [type] Resource record type. Example: `AAAA`.
  ResourceRecord({
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
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory ResourceRecord.fromMap(Map<String, dynamic> map) {
    return ResourceRecord(
      name: map['name'] == null ? null : map['name'] as String,
      rrdata: map['rrdata'] == null ? null : map['rrdata'] as String,
      type: map['type'] == null
          ? null
          : ResourceRecordType.fromValue(map['type'] as String),
    );
  }
}
