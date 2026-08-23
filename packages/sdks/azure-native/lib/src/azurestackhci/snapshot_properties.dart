// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data.dart';

/// Properties under the snapshot resource
class SnapshotProperties {
  /// Data used when creating a snapshot
  final pulumi.Input<CreationData>? creationData;

  /// Creates a new [SnapshotProperties].
  /// [creationData] Data used when creating a snapshot
  const SnapshotProperties({
    this.creationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationData': ?pulumi.Input.mapOptionalInputValue<CreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
    };
  }

  factory SnapshotProperties.fromMap(Map<String, dynamic> map) {
    return SnapshotProperties(
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
