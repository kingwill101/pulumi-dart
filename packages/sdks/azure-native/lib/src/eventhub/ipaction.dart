import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP Filter Action
enum IPAction implements pulumi.PulumiEnum<String> {
  valueAccept("Accept"),
  valueReject("Reject");

  const IPAction(this.wireValue);
  @override
  final String wireValue;

  static IPAction fromValue(String value) {
    for (final item in IPAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAction value: $value');
  }
}
