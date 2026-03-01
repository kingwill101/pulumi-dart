/// Indicates if the server supports Microsoft Entra authentication.
enum MicrosoftEntraAuth {
  enabled("Enabled"),
  disabled("Disabled");

  const MicrosoftEntraAuth(this.value);
  final String value;

  static MicrosoftEntraAuth fromValue(String value) {
    for (final item in MicrosoftEntraAuth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MicrosoftEntraAuth value: $value');
  }
}

