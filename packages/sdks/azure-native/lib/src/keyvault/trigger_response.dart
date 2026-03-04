// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerResponse {
  /// The time duration after key creation to rotate the key. It only applies to rotate. It will be in ISO 8601 duration format. Eg: 'P90D', 'P1Y'.
  final pulumi.Input<String>? timeAfterCreate;

  /// The time duration before key expiring to rotate or notify. It will be in ISO 8601 duration format. Eg: 'P90D', 'P1Y'.
  final pulumi.Input<String>? timeBeforeExpiry;

  /// Creates a new [TriggerResponse].
  /// [timeAfterCreate] The time duration after key creation to rotate the key. It only applies to rotate. It will be in ISO 8601 duration format. Eg: 'P90D', 'P1Y'.
  /// [timeBeforeExpiry] The time duration before key expiring to rotate or notify. It will be in ISO 8601 duration format. Eg: 'P90D', 'P1Y'.
  TriggerResponse({this.timeAfterCreate, this.timeBeforeExpiry});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeAfterCreate': ?timeAfterCreate,
      'timeBeforeExpiry': ?timeBeforeExpiry,
    };
  }

  factory TriggerResponse.fromMap(Map<String, dynamic> map) {
    return TriggerResponse(
      timeAfterCreate: (() {
        final guardedValue = map['timeAfterCreate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeBeforeExpiry: (() {
        final guardedValue = map['timeBeforeExpiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
