/// Indicates if the server supports Microsoft Entra authentication.
enum MicrosoftEntraAuth {
  enabled("Enabled"),
  disabled("Disabled");

  const MicrosoftEntraAuth(this.wireValue);
  final String wireValue;

  static MicrosoftEntraAuth fromValue(String value) {
    for (final item in MicrosoftEntraAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MicrosoftEntraAuth value: $value');
  }
}
