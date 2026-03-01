// ignore_for_file: unused_element, unnecessary_cast

class KxDataviewSegmentConfiguration {
  /// The database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume.
  final List<String> dbPaths;

  /// Enables on-demand caching on the selected database path when a particular file or a column of the database is accessed. When on demand caching is **True**, dataviews perform minimal loading of files on the filesystem as needed. When it is set to **False**, everything is cached. The default value is **False**.
  final bool? onDemand;

  /// The name of the volume that you want to attach to a dataview. This volume must be in the same availability zone as the dataview that you are attaching to.
  final String volumeName;

  /// Creates a new [KxDataviewSegmentConfiguration].
  /// [dbPaths] The database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume.
  /// [onDemand] Enables on-demand caching on the selected database path when a particular file or a column of the database is accessed. When on demand caching is **True**, dataviews perform minimal loading of files on the filesystem as needed. When it is set to **False**, everything is cached. The default value is **False**.
  /// [volumeName] The name of the volume that you want to attach to a dataview. This volume must be in the same availability zone as the dataview that you are attaching to.
  KxDataviewSegmentConfiguration({
    required this.dbPaths,
    this.onDemand,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbPaths': dbPaths,
      'onDemand': ?onDemand,
      'volumeName': volumeName,
    };
  }

  factory KxDataviewSegmentConfiguration.fromMap(Map<String, dynamic> map) {
    return KxDataviewSegmentConfiguration(
      dbPaths: (map['dbPaths'] as List).cast<String>(),
      onDemand: map['onDemand'] == null ? null : map['onDemand'] as bool,
      volumeName: map['volumeName'] as String,
    );
  }
}
