/// Diagnostic Destination.
enum DiagnosticDestination {
  communityOnly("CommunityOnly"),
  enclaveOnly("EnclaveOnly"),
  both("Both");

  const DiagnosticDestination(this.value);
  final String value;

  static DiagnosticDestination fromValue(String value) {
    for (final item in DiagnosticDestination.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticDestination value: $value');
  }
}

