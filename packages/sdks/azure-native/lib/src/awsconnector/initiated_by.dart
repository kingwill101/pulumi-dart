import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InitiatedBy implements pulumi.PulumiEnum<String> {
  cUSTOMER("CUSTOMER"),
  sERVICE("SERVICE");

  const InitiatedBy(this.wireValue);
  @override
  final String wireValue;

  static InitiatedBy fromValue(String value) {
    for (final item in InitiatedBy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitiatedBy value: $value');
  }
}
