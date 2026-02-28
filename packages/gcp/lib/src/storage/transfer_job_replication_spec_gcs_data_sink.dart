// ignore_for_file: unused_element, unnecessary_cast

class TransferJobReplicationSpecGcsDataSink {
  /// Google Cloud Storage bucket name.
  final String bucketName;

  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String? path;

  /// Creates a new [TransferJobReplicationSpecGcsDataSink].
  /// [bucketName] Google Cloud Storage bucket name.
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  TransferJobReplicationSpecGcsDataSink({
    required this.bucketName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory TransferJobReplicationSpecGcsDataSink.fromMap(
      Map<String, dynamic> map) {
    return TransferJobReplicationSpecGcsDataSink(
      bucketName: map['bucketName'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
