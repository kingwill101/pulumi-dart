// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecPosixDataSink {
  /// Root directory path to the filesystem.
  final String rootDirectory;

  TransferJobTransferSpecPosixDataSink({
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rootDirectory'] = rootDirectory;
    return map;
  }

  factory TransferJobTransferSpecPosixDataSink.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecPosixDataSink(
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}
