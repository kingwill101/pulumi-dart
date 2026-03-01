// ignore_for_file: unused_element, unnecessary_cast


class TransferJobTransferSpecGcsDataSource {
  /// Google Cloud Storage bucket name.
  final String bucketName;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String? path;

  /// Creates a new [TransferJobTransferSpecGcsDataSource].
  /// [bucketName] Google Cloud Storage bucket name.
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  TransferJobTransferSpecGcsDataSource({
    required this.bucketName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'path': ?path,
    };
  }

  factory TransferJobTransferSpecGcsDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecGcsDataSource(
      bucketName: map['bucketName'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

