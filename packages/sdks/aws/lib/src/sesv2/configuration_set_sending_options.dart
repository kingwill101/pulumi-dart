// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetSendingOptions {
  /// If `true`, email sending is enabled for the configuration set. If `false`, email sending is disabled for the configuration set.
  final pulumi.Input<bool>? sendingEnabled;

  /// Creates a new [ConfigurationSetSendingOptions].
  /// [sendingEnabled] If `true`, email sending is enabled for the configuration set. If `false`, email sending is disabled for the configuration set.
  ConfigurationSetSendingOptions({this.sendingEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sendingEnabled': ?sendingEnabled};
  }

  factory ConfigurationSetSendingOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetSendingOptions(
      sendingEnabled: (() {
        final guardedValue = map['sendingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
