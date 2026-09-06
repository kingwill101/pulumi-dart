import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired level of diagnostic data emitted by the cluster.
enum DiagnosticLevel implements pulumi.PulumiEnum<String> {
  valueOff("Off"),
  valueBasic("Basic"),
  valueEnhanced("Enhanced");

  const DiagnosticLevel(this.wireValue);
  @override
  final String wireValue;

  static DiagnosticLevel fromValue(String value) {
    for (final item in DiagnosticLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticLevel value: $value');
  }
}
