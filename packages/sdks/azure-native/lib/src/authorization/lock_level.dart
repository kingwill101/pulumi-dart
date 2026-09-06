import 'package:pulumi/pulumi.dart' as pulumi;

/// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
enum LockLevel implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueCanNotDelete("CanNotDelete"),
  valueReadOnly("ReadOnly");

  const LockLevel(this.wireValue);
  @override
  final String wireValue;

  static LockLevel fromValue(String value) {
    for (final item in LockLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LockLevel value: $value');
  }
}
