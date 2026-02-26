// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecTransferManifest {
  /// The **GCS URI** to the manifest file (CSV or line-delimited). Example: `gs://my-bucket/manifest.csv`
  final String location;

  TransferJobTransferSpecTransferManifest({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory TransferJobTransferSpecTransferManifest.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecTransferManifest(
      location: map['location'] as String,
    );
  }
}
