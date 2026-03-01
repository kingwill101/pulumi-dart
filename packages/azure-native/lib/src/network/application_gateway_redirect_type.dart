/// HTTP redirection type.
enum ApplicationGatewayRedirectType {
  valuePermanent("Permanent"),
  valueFound("Found"),
  valueSeeOther("SeeOther"),
  valueTemporary("Temporary");

  const ApplicationGatewayRedirectType(this.value);
  final String value;

  static ApplicationGatewayRedirectType fromValue(String value) {
    for (final item in ApplicationGatewayRedirectType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayRedirectType value: $value');
  }
}

