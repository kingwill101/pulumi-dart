// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database migration errors for online migration
class SyncMigrationDatabaseErrorEventResponse {
  /// Event text.
  final pulumi.Input<String> eventText;
  /// Event type.
  final pulumi.Input<String> eventTypeString;
  /// String value of timestamp.
  final pulumi.Input<String> timestampString;

  /// Creates a new [SyncMigrationDatabaseErrorEventResponse].
  /// [eventText] Event text.
  /// [eventTypeString] Event type.
  /// [timestampString] String value of timestamp.
  const SyncMigrationDatabaseErrorEventResponse({
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
      eventText: pulumi.Input.fromValue(map['eventText'] as String),
      eventTypeString: pulumi.Input.fromValue(map['eventTypeString'] as String),
      timestampString: pulumi.Input.fromValue(map['timestampString'] as String),
    );
  }
}
