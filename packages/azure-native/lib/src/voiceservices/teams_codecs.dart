/// The voice codecs expected for communication with Teams.
enum TeamsCodecs {
  pCMA("PCMA"),
  pCMU("PCMU"),
  g722("G722"),
  g7222("G722_2"),
  sILK8("SILK_8"),
  sILK16("SILK_16");

  const TeamsCodecs(this.value);
  final String value;

  static TeamsCodecs fromValue(String value) {
    for (final item in TeamsCodecs.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamsCodecs value: $value');
  }
}

