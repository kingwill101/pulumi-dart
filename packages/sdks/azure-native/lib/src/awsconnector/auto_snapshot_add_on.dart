// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AutoSnapshotAddOn
class AutoSnapshotAddOn {
  /// The daily time when an automatic snapshot will be created.
  final pulumi.Input<String>? snapshotTimeOfDay;

  /// Creates a new [AutoSnapshotAddOn].
  /// [snapshotTimeOfDay] The daily time when an automatic snapshot will be created.
  const AutoSnapshotAddOn({
    this.snapshotTimeOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotTimeOfDay': ?snapshotTimeOfDay,
    };
  }

  factory AutoSnapshotAddOn.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotAddOn(
      snapshotTimeOfDay: (() { final guardedValue = map['snapshotTimeOfDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
