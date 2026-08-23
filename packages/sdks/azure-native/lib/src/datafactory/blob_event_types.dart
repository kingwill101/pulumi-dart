enum BlobEventTypes {
  microsoftStorageBlobCreated("Microsoft.Storage.BlobCreated"),
  microsoftStorageBlobDeleted("Microsoft.Storage.BlobDeleted");

  const BlobEventTypes(this.wireValue);
  final String wireValue;

  static BlobEventTypes fromValue(String value) {
    for (final item in BlobEventTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobEventTypes value: $value');
  }
}
