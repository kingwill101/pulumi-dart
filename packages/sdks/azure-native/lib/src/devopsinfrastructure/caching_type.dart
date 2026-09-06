import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of caching to be enabled for the data disks. The default value for caching is readwrite. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
enum CachingType implements pulumi.PulumiEnum<String> {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const CachingType(this.wireValue);
  @override
  final String wireValue;

  static CachingType fromValue(String value) {
    for (final item in CachingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingType value: $value');
  }
}
