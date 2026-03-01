/// The kind of workbook. Choices are user and shared.
enum OrchestratorKind {
  valueKubernetes("Kubernetes");

  const OrchestratorKind(this.value);
  final String value;

  static OrchestratorKind fromValue(String value) {
    for (final item in OrchestratorKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrchestratorKind value: $value');
  }
}

