// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobJobSettingsRuntimeSetting {
  /// Set name, optional ENUM value:
  ///
  /// runtime.offline.speed.limit.mb (valid when runtime.offline.speed.limit.enable = true)
  ///
  /// runtime.offline.speed.limit.enable
  ///
  /// dst.offline.connection.max (the maximum number of write connections for offline batch tasks)
  ///
  /// runtime.offline.concurrent (offline batch synchronization task concurrency)
  ///
  /// dst.realtime.connection.max (maximum number of write connections for real-time tasks)
  ///
  /// runtime.enable.auto.create.schema (whether to automatically create a schema on the target side)
  ///
  /// src.offline.datasource.max.connection (maximum number of source connections for offline batch tasks)
  ///
  /// runtime.realtime.concurrent (real-time task concurrency)
  final pulumi.Input<String>? name;

  /// Runtime setting value
  final pulumi.Input<String>? value;

  /// Creates a new [DiJobJobSettingsRuntimeSetting].
  /// [name] Set name, optional ENUM value:
  /// [value] Runtime setting value
  DiJobJobSettingsRuntimeSetting({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory DiJobJobSettingsRuntimeSetting.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettingsRuntimeSetting(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
