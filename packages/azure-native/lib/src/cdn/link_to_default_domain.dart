/// whether this route will be linked to the default endpoint domain.
enum LinkToDefaultDomain {
  enabled("Enabled"),
  disabled("Disabled");

  const LinkToDefaultDomain(this.value);
  final String value;

  static LinkToDefaultDomain fromValue(String value) {
    for (final item in LinkToDefaultDomain.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkToDefaultDomain value: $value');
  }
}

