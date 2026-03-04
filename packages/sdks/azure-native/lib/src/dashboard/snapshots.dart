// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grafana Snapshots settings
class Snapshots {
  /// Set to false to disable external snapshot publish endpoint
  final pulumi.Input<bool>? externalEnabled;

  /// Creates a new [Snapshots].
  /// [externalEnabled] Set to false to disable external snapshot publish endpoint
  Snapshots({this.externalEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'externalEnabled': ?externalEnabled};
  }

  factory Snapshots.fromMap(Map<String, dynamic> map) {
    return Snapshots(
      externalEnabled: (() {
        final guardedValue = map['externalEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
