import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol over which communication will happen over this endpoint
enum Protocol implements pulumi.PulumiEnum<String> {
  tcp("tcp"),
  udp("udp"),
  http("http");

  const Protocol(this.wireValue);
  @override
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}
