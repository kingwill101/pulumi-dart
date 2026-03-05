// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDbRevisionVersionList {
  /// (Available since v1.216.0) The revised version Code of the database engine is used to specify the upgrade to the target version.
  final pulumi.Input<String>? releaseNote;
  /// (Available since v1.216.0) Database version release status. Valid values are `Stable`, `Old`, `HighRisk`.
  final pulumi.Input<String>? releaseType;
  /// (Available since v1.216.0) The revised version Code of the database engine is used to specify the upgrade to the target version.
  final pulumi.Input<String>? revisionVersionCode;
  /// (Available since v1.216.0) The revision version number of the database engine.
  final pulumi.Input<String>? revisionVersionName;

  /// Creates a new [ClusterDbRevisionVersionList].
  /// [releaseNote] (Available since v1.216.0) The revised version Code of the database engine is used to specify the upgrade to the target version.
  /// [releaseType] (Available since v1.216.0) Database version release status. Valid values are `Stable`, `Old`, `HighRisk`.
  /// [revisionVersionCode] (Available since v1.216.0) The revised version Code of the database engine is used to specify the upgrade to the target version.
  /// [revisionVersionName] (Available since v1.216.0) The revision version number of the database engine.
  ClusterDbRevisionVersionList({
    this.releaseNote,
    this.releaseType,
    this.revisionVersionCode,
    this.revisionVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseNote': ?releaseNote,
      'releaseType': ?releaseType,
      'revisionVersionCode': ?revisionVersionCode,
      'revisionVersionName': ?revisionVersionName,
    };
  }

  factory ClusterDbRevisionVersionList.fromMap(Map<String, dynamic> map) {
    return ClusterDbRevisionVersionList(
      releaseNote: (() { final guardedValue = map['releaseNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseType: (() { final guardedValue = map['releaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionVersionCode: (() { final guardedValue = map['revisionVersionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionVersionName: (() { final guardedValue = map['revisionVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

