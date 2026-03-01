/// The type of caching to be enabled for the data disks. The default value for caching is readwrite. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
enum CachingType {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const CachingType(this.value);
  final String value;

  static CachingType fromValue(String value) {
    for (final item in CachingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingType value: $value');
  }
}

