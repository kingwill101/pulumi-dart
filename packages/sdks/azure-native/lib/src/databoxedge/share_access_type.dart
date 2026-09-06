import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of access to be allowed for the user.
enum ShareAccessType implements pulumi.PulumiEnum<String> {
  valueChange("Change"),
  valueRead("Read"),
  valueCustom("Custom");

  const ShareAccessType(this.wireValue);
  @override
  final String wireValue;

  static ShareAccessType fromValue(String value) {
    for (final item in ShareAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareAccessType value: $value');
  }
}
