// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrossRegionRestoreSettings {
  /// CrossRegionRestore state
  final pulumi.Input<String>? state;

  /// Creates a new [CrossRegionRestoreSettings].
  /// [state] CrossRegionRestore state
  const CrossRegionRestoreSettings({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory CrossRegionRestoreSettings.fromMap(Map<String, dynamic> map) {
    return CrossRegionRestoreSettings(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

