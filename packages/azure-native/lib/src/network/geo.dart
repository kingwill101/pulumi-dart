/// The Geo for CIDR advertising. Should be an Geo code.
enum Geo {
  valueGLOBAL("GLOBAL"),
  valueAFRI("AFRI"),
  valueAPAC("APAC"),
  valueEURO("EURO"),
  valueLATAM("LATAM"),
  valueNAM("NAM"),
  valueME("ME"),
  valueOCEANIA("OCEANIA"),
  valueAQ("AQ");

  const Geo(this.value);
  final String value;

  static Geo fromValue(String value) {
    for (final item in Geo.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Geo value: $value');
  }
}

