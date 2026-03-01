enum BlobEventTypes {
  valueMicrosoftStorageBlobCreated("Microsoft.Storage.BlobCreated"),
  valueMicrosoftStorageBlobDeleted("Microsoft.Storage.BlobDeleted");

  const BlobEventTypes(this.value);
  final String value;

  static BlobEventTypes fromValue(String value) {
    for (final item in BlobEventTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobEventTypes value: $value');
  }
}

