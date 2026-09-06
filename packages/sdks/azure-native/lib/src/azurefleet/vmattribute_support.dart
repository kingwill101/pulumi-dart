import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the VMSize supporting RDMA (Remote Direct Memory Access) should be used to build Fleet or not.
enum VMAttributeSupport implements pulumi.PulumiEnum<String> {
  excluded("Excluded"),
  included("Included"),
  required("Required");

  const VMAttributeSupport(this.wireValue);
  @override
  final String wireValue;

  static VMAttributeSupport fromValue(String value) {
    for (final item in VMAttributeSupport.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMAttributeSupport value: $value');
  }
}
