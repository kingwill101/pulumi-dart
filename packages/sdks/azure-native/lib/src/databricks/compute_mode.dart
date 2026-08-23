/// The workspace compute mode. Required on create, cannot be changed. Possible values include: 'Serverless', 'Hybrid'
enum ComputeMode {
  serverless("Serverless"),
  hybrid("Hybrid");

  const ComputeMode(this.wireValue);
  final String wireValue;

  static ComputeMode fromValue(String value) {
    for (final item in ComputeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeMode value: $value');
  }
}
