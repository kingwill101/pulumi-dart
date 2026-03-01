/// The signed services accessible with the service SAS. Possible values include: Blob (b), Container (c), File (f), Share (s).
enum SignedResource {
  valueB("b"),
  valueC("c"),
  valueF("f"),
  valueS("s");

  const SignedResource(this.value);
  final String value;

  static SignedResource fromValue(String value) {
    for (final item in SignedResource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignedResource value: $value');
  }
}

