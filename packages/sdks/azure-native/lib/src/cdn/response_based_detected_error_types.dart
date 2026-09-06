import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of response errors for real user requests for which origin will be deemed unhealthy
enum ResponseBasedDetectedErrorTypes implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueTcpErrorsOnly("TcpErrorsOnly"),
  valueTcpAndHttpErrors("TcpAndHttpErrors");

  const ResponseBasedDetectedErrorTypes(this.wireValue);
  @override
  final String wireValue;

  static ResponseBasedDetectedErrorTypes fromValue(String value) {
    for (final item in ResponseBasedDetectedErrorTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponseBasedDetectedErrorTypes value: $value');
  }
}
