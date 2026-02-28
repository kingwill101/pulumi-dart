// ignore_for_file: unused_element, unnecessary_cast


class TransferJobTransferSpecGcsDataSink {
  /// Google Cloud Storage bucket name.
  final String bucketName;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String? path;

  /// Creates a new [TransferJobTransferSpecGcsDataSink].
  /// [bucketName] Google Cloud Storage bucket name.
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  TransferJobTransferSpecGcsDataSink({
    required this.bucketName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'path': ?path,
    };
  }

  factory TransferJobTransferSpecGcsDataSink.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecGcsDataSink(
      bucketName: map['bucketName'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

