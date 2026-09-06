import 'package:pulumi/pulumi.dart' as pulumi;

/// Remote support type.
enum RemoteSupportType implements pulumi.PulumiEnum<String> {
  enable("Enable"),
  revoke("Revoke");

  const RemoteSupportType(this.wireValue);
  @override
  final String wireValue;

  static RemoteSupportType fromValue(String value) {
    for (final item in RemoteSupportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteSupportType value: $value');
  }
}
