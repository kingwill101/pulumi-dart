// ignore_for_file: unused_element, unnecessary_cast


class TransferJobTransferSpecPosixDataSink {
  /// Root directory path to the filesystem.
  final String rootDirectory;

  /// Creates a new [TransferJobTransferSpecPosixDataSink].
  /// [rootDirectory] Root directory path to the filesystem.
  TransferJobTransferSpecPosixDataSink({
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootDirectory': rootDirectory,
    };
  }

  factory TransferJobTransferSpecPosixDataSink.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecPosixDataSink(
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}

