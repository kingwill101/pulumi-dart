import 'package:pulumi/pulumi.dart' as pulumi;

/// Accepted protocol schemes.
enum FrontDoorProtocol implements pulumi.PulumiEnum<String> {
  http("Http"),
  https("Https");

  const FrontDoorProtocol(this.wireValue);
  @override
  final String wireValue;

  static FrontDoorProtocol fromValue(String value) {
    for (final item in FrontDoorProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorProtocol value: $value');
  }
}
