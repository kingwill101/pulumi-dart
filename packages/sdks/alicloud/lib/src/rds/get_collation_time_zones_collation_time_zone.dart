// ignore_for_file: unused_element, unnecessary_cast


class GetCollationTimeZonesCollationTimeZone {
  /// The code of the instance type.
  final String? description;
  /// The offset of the UTC time. The offset is in the following format: (UTC+<i>HH:mm</i>).
  final String? standardTimeOffset;
  /// The time zone that is available for use in ApsaraDB RDS.
  final String? timeZone;

  /// Creates a new [GetCollationTimeZonesCollationTimeZone].
  /// [description] The code of the instance type.
  /// [standardTimeOffset] The offset of the UTC time. The offset is in the following format: (UTC+<i>HH:mm</i>).
  /// [timeZone] The time zone that is available for use in ApsaraDB RDS.
  GetCollationTimeZonesCollationTimeZone({
    this.description,
    this.standardTimeOffset,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'standardTimeOffset': ?standardTimeOffset,
      'timeZone': ?timeZone,
    };
  }

  factory GetCollationTimeZonesCollationTimeZone.fromMap(Map<String, dynamic> map) {
    return GetCollationTimeZonesCollationTimeZone(
      description: map['description'] == null ? null : map['description'] as String,
      standardTimeOffset: map['standardTimeOffset'] == null ? null : map['standardTimeOffset'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

