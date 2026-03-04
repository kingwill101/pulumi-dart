/// HTTP redirection type.
enum ApplicationGatewayRedirectType {
  valuePermanent("Permanent"),
  valueFound("Found"),
  valueSeeOther("SeeOther"),
  valueTemporary("Temporary");

  const ApplicationGatewayRedirectType(this.wireValue);
  final String wireValue;

  static ApplicationGatewayRedirectType fromValue(String value) {
    for (final item in ApplicationGatewayRedirectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayRedirectType value: $value');
  }
}
