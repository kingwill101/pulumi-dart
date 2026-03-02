// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CrossSubscriptionRestore Settings
class CrossSubscriptionRestoreSettings {
  /// CrossSubscriptionRestore state
  final pulumi.Input<String>? state;

  /// Creates a new [CrossSubscriptionRestoreSettings].
  /// [state] CrossSubscriptionRestore state
  CrossSubscriptionRestoreSettings({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory CrossSubscriptionRestoreSettings.fromMap(Map<String, dynamic> map) {
    return CrossSubscriptionRestoreSettings(
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

