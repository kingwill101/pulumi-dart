/// Property streamExceptionPolicy
enum StatefulEngineOptionsStreamExceptionPolicy {
  cONTINUE("CONTINUE"),
  dROP("DROP"),
  rEJECT("REJECT");

  const StatefulEngineOptionsStreamExceptionPolicy(this.wireValue);
  final String wireValue;

  static StatefulEngineOptionsStreamExceptionPolicy fromValue(String value) {
    for (final item in StatefulEngineOptionsStreamExceptionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulEngineOptionsStreamExceptionPolicy value: $value');
  }
}
