import 'package:pulumi/pulumi.dart' as pulumi;

/// Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
enum EndpointAccessDefaultAction implements pulumi.PulumiEnum<String> {
  allow("Allow"),
  deny("Deny");

  const EndpointAccessDefaultAction(this.wireValue);
  @override
  final String wireValue;

  static EndpointAccessDefaultAction fromValue(String value) {
    for (final item in EndpointAccessDefaultAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointAccessDefaultAction value: $value');
  }
}
