/// Diagnostic Destination.
enum DiagnosticDestination {
  communityOnly("CommunityOnly"),
  enclaveOnly("EnclaveOnly"),
  both("Both");

  const DiagnosticDestination(this.wireValue);
  final String wireValue;

  static DiagnosticDestination fromValue(String value) {
    for (final item in DiagnosticDestination.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticDestination value: $value');
  }
}

