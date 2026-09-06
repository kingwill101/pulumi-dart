import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Destination.
enum DiagnosticDestination implements pulumi.PulumiEnum<String> {
  communityOnly("CommunityOnly"),
  enclaveOnly("EnclaveOnly"),
  both("Both");

  const DiagnosticDestination(this.wireValue);
  @override
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
