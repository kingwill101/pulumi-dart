import 'package:pulumi/pulumi.dart' as pulumi;

/// Backend communication protocol. Required when backend type is 'Single'.
enum BackendProtocol implements pulumi.PulumiEnum<String> {
  valueHttp("http"),
  valueSoap("soap");

  const BackendProtocol(this.wireValue);
  @override
  final String wireValue;

  static BackendProtocol fromValue(String value) {
    for (final item in BackendProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendProtocol value: $value');
  }
}
