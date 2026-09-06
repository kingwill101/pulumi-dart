import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Type of ApplicationGroup.
enum ApplicationGroupType implements pulumi.PulumiEnum<String> {
  valueRemoteApp("RemoteApp"),
  valueDesktop("Desktop");

  const ApplicationGroupType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGroupType fromValue(String value) {
    for (final item in ApplicationGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGroupType value: $value');
  }
}
