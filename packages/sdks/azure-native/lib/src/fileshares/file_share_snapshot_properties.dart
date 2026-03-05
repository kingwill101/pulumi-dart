// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FileShareSnapshot properties
class FileShareSnapshotProperties {
  /// The metadata
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [FileShareSnapshotProperties].
  /// [metadata] The metadata
  FileShareSnapshotProperties({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory FileShareSnapshotProperties.fromMap(Map<String, dynamic> map) {
    return FileShareSnapshotProperties(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

