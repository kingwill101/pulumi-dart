import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the storage class.
enum SCType implements pulumi.PulumiEnum<String> {
  native("Native"),
  rWX("RWX"),
  blob("Blob"),
  nFS("NFS"),
  sMB("SMB");

  const SCType(this.wireValue);
  @override
  final String wireValue;

  static SCType fromValue(String value) {
    for (final item in SCType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SCType value: $value');
  }
}
