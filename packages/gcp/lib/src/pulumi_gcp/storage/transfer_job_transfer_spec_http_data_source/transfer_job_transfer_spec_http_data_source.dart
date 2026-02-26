// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecHttpDataSource {
  /// The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.
  final String listUrl;

  TransferJobTransferSpecHttpDataSource({
    required this.listUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['listUrl'] = listUrl;
    return map;
  }

  factory TransferJobTransferSpecHttpDataSource.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecHttpDataSource(
      listUrl: map['listUrl'] as String,
    );
  }
}
