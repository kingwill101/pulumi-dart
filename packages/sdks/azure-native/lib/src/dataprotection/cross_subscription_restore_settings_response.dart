// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CrossSubscriptionRestore Settings
class CrossSubscriptionRestoreSettingsResponse {
  /// CrossSubscriptionRestore state
  final pulumi.Input<String>? state;

  /// Creates a new [CrossSubscriptionRestoreSettingsResponse].
  /// [state] CrossSubscriptionRestore state
  CrossSubscriptionRestoreSettingsResponse({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory CrossSubscriptionRestoreSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CrossSubscriptionRestoreSettingsResponse(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
