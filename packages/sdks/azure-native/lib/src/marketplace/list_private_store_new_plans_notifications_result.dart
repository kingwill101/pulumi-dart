// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'new_notifications_response.dart';

/// Result data returned by listPrivateStoreNewPlansNotifications.
class ListPrivateStoreNewPlansNotificationsResult {
  final List<NewNotificationsResponse>? newPlansNotifications;

  /// Creates a new [ListPrivateStoreNewPlansNotificationsResult].
  /// [newPlansNotifications] Optional.
  ListPrivateStoreNewPlansNotificationsResult({
    this.newPlansNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newPlansNotifications': ?newPlansNotifications == null ? null : pulumi.Input.encodeList<NewNotificationsResponse, Map<String, dynamic>>(newPlansNotifications!, (value) => value.toMap()),
    };
  }

  factory ListPrivateStoreNewPlansNotificationsResult.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreNewPlansNotificationsResult(
      newPlansNotifications: map['newPlansNotifications'] == null ? null : pulumi.Input.decodeList<NewNotificationsResponse>(map['newPlansNotifications']!, (value) => NewNotificationsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

