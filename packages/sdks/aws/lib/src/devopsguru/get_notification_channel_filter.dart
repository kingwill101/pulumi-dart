// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationChannelFilter {
  /// Events to receive notifications for.
  final pulumi.Input<List<String>> messageTypes;
  /// Severity levels to receive notifications for.
  final pulumi.Input<List<String>> severities;

  /// Creates a new [GetNotificationChannelFilter].
  /// [messageTypes] Events to receive notifications for.
  /// [severities] Severity levels to receive notifications for.
  GetNotificationChannelFilter({
    required this.messageTypes,
    required this.severities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageTypes': messageTypes,
      'severities': severities,
    };
  }

  factory GetNotificationChannelFilter.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelFilter(
      messageTypes: pulumi.Input.fromValue((map['messageTypes'] as List).cast<String>()),
      severities: pulumi.Input.fromValue((map['severities'] as List).cast<String>()),
    );
  }
}

