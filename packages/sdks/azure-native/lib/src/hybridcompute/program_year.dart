/// Describes the program year the volume license is for.
enum ProgramYear {
  valueYear1("Year 1"),
  valueYear2("Year 2"),
  valueYear3("Year 3");

  const ProgramYear(this.value);
  final String value;

  static ProgramYear fromValue(String value) {
    for (final item in ProgramYear.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProgramYear value: $value');
  }
}

