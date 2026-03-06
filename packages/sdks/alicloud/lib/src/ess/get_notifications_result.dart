// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notifications_notification.dart';

/// Result data returned by getNotifications.
class GetNotificationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of notification ids.
  final List<String>? ids;
  /// A list of notifications. Each element contains the following attributes:
  final List<GetNotificationsNotification> notifications;
  final String? outputFile;
  /// ID of the scaling group.
  final String scalingGroupId;

  /// Creates a new [GetNotificationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of notification ids.
  /// [notifications] A list of notifications. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [scalingGroupId] ID of the scaling group.
  const GetNotificationsResult({
    required this.id,
    this.ids,
    required this.notifications,
    this.outputFile,
    required this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ?ids,
      'notifications': pulumi.Input.encodeList<GetNotificationsNotification, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory GetNotificationsResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationsResult(
      id: map['id'] as String,
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      notifications: pulumi.Input.decodeList<GetNotificationsNotification>(map['notifications']!, (value) => GetNotificationsNotification.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingGroupId: map['scalingGroupId'] as String,
    );
  }
}

