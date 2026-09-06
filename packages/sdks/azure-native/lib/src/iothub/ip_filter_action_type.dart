import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired action for requests captured by this rule.
enum IpFilterActionType implements pulumi.PulumiEnum<String> {
  valueAccept("Accept"),
  valueReject("Reject");

  const IpFilterActionType(this.wireValue);
  @override
  final String wireValue;

  static IpFilterActionType fromValue(String value) {
    for (final item in IpFilterActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFilterActionType value: $value');
  }
}
