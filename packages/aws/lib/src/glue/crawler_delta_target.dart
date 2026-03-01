// ignore_for_file: unused_element, unnecessary_cast

class CrawlerDeltaTarget {
  /// The name of the connection to use to connect to the Delta table target.
  final String? connectionName;

  /// Specifies whether the crawler will create native tables, to allow integration with query engines that support querying of the Delta transaction log directly.
  final bool? createNativeDeltaTable;

  /// A list of the Amazon S3 paths to the Delta tables.
  final List<String> deltaTables;

  /// Specifies whether to write the manifest files to the Delta table path.
  final bool writeManifest;

  /// Creates a new [CrawlerDeltaTarget].
  /// [connectionName] The name of the connection to use to connect to the Delta table target.
  /// [createNativeDeltaTable] Specifies whether the crawler will create native tables, to allow integration with query engines that support querying of the Delta transaction log directly.
  /// [deltaTables] A list of the Amazon S3 paths to the Delta tables.
  /// [writeManifest] Specifies whether to write the manifest files to the Delta table path.
  CrawlerDeltaTarget({
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
      connectionName: map['connectionName'] == null
          ? null
          : map['connectionName'] as String,
      createNativeDeltaTable: map['createNativeDeltaTable'] == null
          ? null
          : map['createNativeDeltaTable'] as bool,
      deltaTables: (map['deltaTables'] as List).cast<String>(),
      writeManifest: map['writeManifest'] as bool,
    );
  }
}
