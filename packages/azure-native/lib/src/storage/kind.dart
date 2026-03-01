/// Required. Indicates the type of storage account.
enum Kind {
  valueStorage("Storage"),
  valueStorageV2("StorageV2"),
  valueBlobStorage("BlobStorage"),
  valueFileStorage("FileStorage"),
  valueBlockBlobStorage("BlockBlobStorage");

  const Kind(this.value);
  final String value;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}

