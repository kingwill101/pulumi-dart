/// This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
enum EndpointAccess {
  allow("Allow"),
  deny("Deny");

  const EndpointAccess(this.value);
  final String value;

  static EndpointAccess fromValue(String value) {
    for (final item in EndpointAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointAccess value: $value');
  }
}

