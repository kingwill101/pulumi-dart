import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of Managed Identity used by the DigitalTwinsInstance.
enum DigitalTwinsIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const DigitalTwinsIdentityType(this.wireValue);
  @override
  final String wireValue;

  static DigitalTwinsIdentityType fromValue(String value) {
    for (final item in DigitalTwinsIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DigitalTwinsIdentityType value: $value');
  }
}
