import 'package:pulumi/pulumi.dart' as pulumi;

enum IsDeviceMatchValue implements pulumi.PulumiEnum<String> {
  mobile("Mobile"),
  desktop("Desktop");

  const IsDeviceMatchValue(this.wireValue);
  @override
  final String wireValue;

  static IsDeviceMatchValue fromValue(String value) {
    for (final item in IsDeviceMatchValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsDeviceMatchValue value: $value');
  }
}
