/// FTT and RAID Level.
enum FttAndRaidLevel {
  unknown("Unknown"),
  ftt1Raid1("Ftt1Raid1"),
  ftt1Raid5("Ftt1Raid5"),
  ftt2Raid1("Ftt2Raid1"),
  ftt2Raid6("Ftt2Raid6"),
  ftt3Raid1("Ftt3Raid1");

  const FttAndRaidLevel(this.value);
  final String value;

  static FttAndRaidLevel fromValue(String value) {
    for (final item in FttAndRaidLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FttAndRaidLevel value: $value');
  }
}

