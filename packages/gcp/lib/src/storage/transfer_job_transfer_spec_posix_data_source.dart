// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecPosixDataSource {
  /// Root directory path to the filesystem.
  final String rootDirectory;

  /// Creates a new [TransferJobTransferSpecPosixDataSource].
  /// [rootDirectory] Root directory path to the filesystem.
  TransferJobTransferSpecPosixDataSource({
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rootDirectory'] = rootDirectory;
    return map;
  }

  factory TransferJobTransferSpecPosixDataSource.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecPosixDataSource(
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}
