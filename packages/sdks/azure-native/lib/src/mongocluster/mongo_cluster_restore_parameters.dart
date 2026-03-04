// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters used for restore operations
class MongoClusterRestoreParameters {
  /// UTC point in time to restore a mongo cluster
  final pulumi.Input<String>? pointInTimeUTC;

  /// Resource ID to locate the source cluster to restore
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [MongoClusterRestoreParameters].
  /// [pointInTimeUTC] UTC point in time to restore a mongo cluster
  /// [sourceResourceId] Resource ID to locate the source cluster to restore
  MongoClusterRestoreParameters({this.pointInTimeUTC, this.sourceResourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTimeUTC': ?pointInTimeUTC,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory MongoClusterRestoreParameters.fromMap(Map<String, dynamic> map) {
    return MongoClusterRestoreParameters(
      pointInTimeUTC: (() {
        final guardedValue = map['pointInTimeUTC'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceResourceId: (() {
        final guardedValue = map['sourceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
