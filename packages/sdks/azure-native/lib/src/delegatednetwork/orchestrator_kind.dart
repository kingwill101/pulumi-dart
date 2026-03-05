/// The kind of workbook. Choices are user and shared.
enum OrchestratorKind {
  valueKubernetes("Kubernetes");

  const OrchestratorKind(this.wireValue);
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

