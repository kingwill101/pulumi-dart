/// Determines how the SLI is evaluated—either based on request counts or time windows.
enum EvaluationType {
  windowBased("WindowBased"),
  requestBased("RequestBased");

  const EvaluationType(this.wireValue);
  final String wireValue;

  static EvaluationType fromValue(String value) {
    for (final item in EvaluationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvaluationType value: $value');
  }
}
