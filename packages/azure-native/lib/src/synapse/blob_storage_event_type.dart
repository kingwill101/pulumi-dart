/// The name of blob storage event type to process.
enum BlobStorageEventType {
  valueMicrosoftStorageBlobCreated("Microsoft.Storage.BlobCreated"),
  valueMicrosoftStorageBlobRenamed("Microsoft.Storage.BlobRenamed");

  const BlobStorageEventType(this.value);
  final String value;

  static BlobStorageEventType fromValue(String value) {
    for (final item in BlobStorageEventType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobStorageEventType value: $value');
  }
}

