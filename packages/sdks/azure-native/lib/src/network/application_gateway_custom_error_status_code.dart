import 'package:pulumi/pulumi.dart' as pulumi;

/// Status code of the application gateway custom error.
enum ApplicationGatewayCustomErrorStatusCode implements pulumi.PulumiEnum<String> {
  valueHttpStatus400("HttpStatus400"),
  valueHttpStatus403("HttpStatus403"),
  valueHttpStatus404("HttpStatus404"),
  valueHttpStatus405("HttpStatus405"),
  valueHttpStatus408("HttpStatus408"),
  valueHttpStatus500("HttpStatus500"),
  valueHttpStatus502("HttpStatus502"),
  valueHttpStatus503("HttpStatus503"),
  valueHttpStatus504("HttpStatus504");

  const ApplicationGatewayCustomErrorStatusCode(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayCustomErrorStatusCode fromValue(String value) {
    for (final item in ApplicationGatewayCustomErrorStatusCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayCustomErrorStatusCode value: $value');
  }
}
