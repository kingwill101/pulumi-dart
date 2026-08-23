// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerDeltaTarget {
  /// The name of the connection to use to connect to the Delta table target.
  final pulumi.Input<String>? connectionName;
  /// Specifies whether the crawler will create native tables, to allow integration with query engines that support querying of the Delta transaction log directly.
  final pulumi.Input<bool>? createNativeDeltaTable;
  /// A list of the Amazon S3 paths to the Delta tables.
  final pulumi.Input<List<String>> deltaTables;
  /// Specifies whether to write the manifest files to the Delta table path.
  final pulumi.Input<bool> writeManifest;

  /// Creates a new [CrawlerDeltaTarget].
  /// [connectionName] The name of the connection to use to connect to the Delta table target.
  /// [createNativeDeltaTable] Specifies whether the crawler will create native tables, to allow integration with query engines that support querying of the Delta transaction log directly.
  /// [deltaTables] A list of the Amazon S3 paths to the Delta tables.
  /// [writeManifest] Specifies whether to write the manifest files to the Delta table path.
  const CrawlerDeltaTarget({
    this.connectionName,
    this.createNativeDeltaTable,
    required this.deltaTables,
    required this.writeManifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'createNativeDeltaTable': ?createNativeDeltaTable,
      'deltaTables': deltaTables,
      'writeManifest': writeManifest,
    };
  }

  factory CrawlerDeltaTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerDeltaTarget(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createNativeDeltaTable: (() { final guardedValue = map['createNativeDeltaTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deltaTables: pulumi.Input.fromValue((map['deltaTables'] as List).cast<String>()),
      writeManifest: pulumi.Input.fromValue(map['writeManifest'] as bool),
    );
  }
}
