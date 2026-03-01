/// The signed request scope.
enum SignedRequestScope {
  resourceUri("ResourceUri"),
  endpoint("Endpoint");

  const SignedRequestScope(this.value);
  final String value;

  static SignedRequestScope fromValue(String value) {
    for (final item in SignedRequestScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignedRequestScope value: $value');
  }
}

