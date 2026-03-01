// ignore_for_file: unused_element, unnecessary_cast


class GetZoneRrsetsRrsetRecord {
  /// Comment of the record.
  final String comment;
  /// Value of the record.
  final String value;

  /// Creates a new [GetZoneRrsetsRrsetRecord].
  /// [comment] Comment of the record.
  /// [value] Value of the record.
  GetZoneRrsetsRrsetRecord({
    required this.comment,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'value': value,
    };
  }

  factory GetZoneRrsetsRrsetRecord.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetsRrsetRecord(
      comment: map['comment'] as String,
      value: map['value'] as String,
    );
  }
}

