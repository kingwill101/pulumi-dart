// ignore_for_file: unused_element, unnecessary_cast


/// Database migration errors for online migration
class SyncMigrationDatabaseErrorEventResponse {
  /// Event text.
  final String eventText;
  /// Event type.
  final String eventTypeString;
  /// String value of timestamp.
  final String timestampString;

  /// Creates a new [SyncMigrationDatabaseErrorEventResponse].
  /// [eventText] Event text.
  /// [eventTypeString] Event type.
  /// [timestampString] String value of timestamp.
  SyncMigrationDatabaseErrorEventResponse({
    required this.eventText,
    required this.eventTypeString,
    required this.timestampString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventText': eventText,
      'eventTypeString': eventTypeString,
      'timestampString': timestampString,
    };
  }

  factory SyncMigrationDatabaseErrorEventResponse.fromMap(Map<String, dynamic> map) {
    return SyncMigrationDatabaseErrorEventResponse(
      eventText: map['eventText'] as String,
      eventTypeString: map['eventTypeString'] as String,
      timestampString: map['timestampString'] as String,
    );
  }
}

