// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AutoSnapshotAddOn
class AutoSnapshotAddOnResponse {
  /// The daily time when an automatic snapshot will be created.
  final pulumi.Input<String?>? snapshotTimeOfDay;

  /// Creates a new [AutoSnapshotAddOnResponse].
  /// [snapshotTimeOfDay] The daily time when an automatic snapshot will be created.
  const AutoSnapshotAddOnResponse({
    this.snapshotTimeOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotTimeOfDay': ?snapshotTimeOfDay,
    };
  }

  factory AutoSnapshotAddOnResponse.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotAddOnResponse(
      snapshotTimeOfDay: (() { final guardedValue = map['snapshotTimeOfDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
