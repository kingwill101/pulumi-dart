import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of workbook. Choices are user and shared.
enum OrchestratorKind implements pulumi.PulumiEnum<String> {
  valueKubernetes("Kubernetes");

  const OrchestratorKind(this.wireValue);
  @override
  final String wireValue;

  static OrchestratorKind fromValue(String value) {
    for (final item in OrchestratorKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrchestratorKind value: $value');
  }
}
