/// The Endpoint resource type.
enum EndpointType {
  azureStorageBlobContainer("AzureStorageBlobContainer"),
  nfsMount("NfsMount"),
  azureStorageSmbFileShare("AzureStorageSmbFileShare"),
  smbMount("SmbMount");

  const EndpointType(this.value);
  final String value;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}

