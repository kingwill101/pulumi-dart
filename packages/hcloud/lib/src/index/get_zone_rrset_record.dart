// ignore_for_file: unused_element, unnecessary_cast


class GetZoneRrsetRecord {
  /// Comment of the record.
  final String comment;
  /// Value of the record.
  final String value;

  /// Creates a new [GetZoneRrsetRecord].
  /// [comment] Comment of the record.
  /// [value] Value of the record.
  GetZoneRrsetRecord({
    required this.comment,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'value': value,
    };
  }

  factory GetZoneRrsetRecord.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetRecord(
      comment: map['comment'] as String,
      value: map['value'] as String,
    );
  }
}

