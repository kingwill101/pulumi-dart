import 'package:pulumi/pulumi.dart' as pulumi;

/// The response code for block actions.
enum BlockResponseCode implements pulumi.PulumiEnum<String> {
  valueSERVFAIL("SERVFAIL");

  const BlockResponseCode(this.wireValue);
  @override
  final String wireValue;

  static BlockResponseCode fromValue(String value) {
    for (final item in BlockResponseCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockResponseCode value: $value');
  }
}
