import 'package:pulumi/pulumi.dart' as pulumi;

/// This property allows you to specify the type of the OS that is included in the
/// disk if creating a VM from user-image or a specialized VHD. Possible values
/// are: **Windows,** **Linux.**
enum OperatingSystemTypes implements pulumi.PulumiEnum<String> {
  windows("Windows"),
  linux("Linux");

  const OperatingSystemTypes(this.wireValue);
  @override
  final String wireValue;

  static OperatingSystemTypes fromValue(String value) {
    for (final item in OperatingSystemTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemTypes value: $value');
  }
}
