// ignore_for_file: unused_element, unnecessary_cast


class DatasetCreateRequestDataPath {
  /// The datastore name.
  final String? datastoreName;
  /// Path within the datastore.
  final String? relativePath;

  /// Creates a new [DatasetCreateRequestDataPath].
  /// [datastoreName] The datastore name.
  /// [relativePath] Path within the datastore.
  DatasetCreateRequestDataPath({
    this.datastoreName,
    this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreName': ?datastoreName,
      'relativePath': ?relativePath,
    };
  }

  factory DatasetCreateRequestDataPath.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestDataPath(
      datastoreName: map['datastoreName'] == null ? null : map['datastoreName'] as String,
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
    );
  }
}

