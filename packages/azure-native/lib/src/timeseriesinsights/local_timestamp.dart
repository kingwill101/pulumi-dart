// ignore_for_file: unused_element, unnecessary_cast

import 'local_timestamp_time_zone_offset.dart';

/// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
class LocalTimestamp {
  /// An enum that represents the format of the local timestamp property that needs to be set.
  final String? format;
  /// An object that represents the offset information for the local timestamp format specified. Should not be specified for LocalTimestampFormat - Embedded.
  final LocalTimestampTimeZoneOffset? timeZoneOffset;

  /// Creates a new [LocalTimestamp].
  /// [format] An enum that represents the format of the local timestamp property that needs to be set.
  /// [timeZoneOffset] An object that represents the offset information for the local timestamp format specified. Should not be specified for LocalTimestampFormat - Embedded.
  LocalTimestamp({
    this.format,
    this.timeZoneOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'timeZoneOffset': ?timeZoneOffset == null ? null : timeZoneOffset!.toMap(),
    };
  }

  factory LocalTimestamp.fromMap(Map<String, dynamic> map) {
    return LocalTimestamp(
      format: map['format'] == null ? null : map['format'] as String,
      timeZoneOffset: map['timeZoneOffset'] == null ? null : LocalTimestampTimeZoneOffset.fromMap((map['timeZoneOffset'] as Map).cast<String, dynamic>()),
    );
  }
}

