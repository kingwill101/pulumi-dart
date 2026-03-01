// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecTransferManifest {
  /// The **GCS URI** to the manifest file (CSV or line-delimited). Example: `gs://my-bucket/manifest.csv`
  final String location;

  /// Creates a new [TransferJobTransferSpecTransferManifest].
  /// [location] The **GCS URI** to the manifest file (CSV or line-delimited). Example: `gs://my-bucket/manifest.csv`
  TransferJobTransferSpecTransferManifest({required this.location});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location};
  }

  factory TransferJobTransferSpecTransferManifest.fromMap(
    Map<String, dynamic> map,
  ) {
    return TransferJobTransferSpecTransferManifest(
      location: map['location'] as String,
    );
  }
}
