// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials {
  /// Azure shared access signature. See [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  final String sasToken;

  /// Creates a new [TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials].
  /// [sasToken] Azure shared access signature. See [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials({
    required this.sasToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sasToken'] = sasToken;
    return map;
  }

  factory TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials(
      sasToken: map['sasToken'] as String,
    );
  }
}
