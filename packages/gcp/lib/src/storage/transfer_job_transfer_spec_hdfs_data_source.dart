// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecHdfsDataSource {
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String path;

  /// Creates a new [TransferJobTransferSpecHdfsDataSource].
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  TransferJobTransferSpecHdfsDataSource({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory TransferJobTransferSpecHdfsDataSource.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecHdfsDataSource(
      path: map['path'] as String,
    );
  }
}
