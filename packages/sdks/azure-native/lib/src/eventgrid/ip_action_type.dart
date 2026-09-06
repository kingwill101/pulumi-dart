import 'package:pulumi/pulumi.dart' as pulumi;

/// Action to perform based on the match or no match of the IpMask.
enum IpActionType implements pulumi.PulumiEnum<String> {
  valueAllow("Allow");

  const IpActionType(this.wireValue);
  @override
  final String wireValue;

  static IpActionType fromValue(String value) {
    for (final item in IpActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpActionType value: $value');
  }
}
