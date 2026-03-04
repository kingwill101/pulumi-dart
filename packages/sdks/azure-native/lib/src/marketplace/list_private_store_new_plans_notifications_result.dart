// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'new_notifications_response.dart';

/// Result data returned by listPrivateStoreNewPlansNotifications.
class ListPrivateStoreNewPlansNotificationsResult {
  final List<NewNotificationsResponse>? newPlansNotifications;

  /// Creates a new [ListPrivateStoreNewPlansNotificationsResult].
  /// [newPlansNotifications] Optional.
  ListPrivateStoreNewPlansNotificationsResult({this.newPlansNotifications});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newPlansNotifications': ?(() {
        final guardedValue = newPlansNotifications;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          NewNotificationsResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListPrivateStoreNewPlansNotificationsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListPrivateStoreNewPlansNotificationsResult(
      newPlansNotifications: (() {
        final guardedValue = map['newPlansNotifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<NewNotificationsResponse>(
          guardedValue,
          (value) => NewNotificationsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
