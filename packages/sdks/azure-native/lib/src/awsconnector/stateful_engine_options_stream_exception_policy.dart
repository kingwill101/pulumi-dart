/// Property streamExceptionPolicy
enum StatefulEngineOptionsStreamExceptionPolicy {
  cONTINUE("CONTINUE"),
  dROP("DROP"),
  rEJECT("REJECT");

  const StatefulEngineOptionsStreamExceptionPolicy(this.value);
  final String value;

  static StatefulEngineOptionsStreamExceptionPolicy fromValue(String value) {
    for (final item in StatefulEngineOptionsStreamExceptionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulEngineOptionsStreamExceptionPolicy value: $value');
  }
}

