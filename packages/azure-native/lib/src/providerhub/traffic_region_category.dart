/// The next traffic region.
enum TrafficRegionCategory {
  notSpecified("NotSpecified"),
  canary("Canary"),
  lowTraffic("LowTraffic"),
  mediumTraffic("MediumTraffic"),
  highTraffic("HighTraffic"),
  none("None"),
  restOfTheWorldGroupOne("RestOfTheWorldGroupOne"),
  restOfTheWorldGroupTwo("RestOfTheWorldGroupTwo");

  const TrafficRegionCategory(this.value);
  final String value;

  static TrafficRegionCategory fromValue(String value) {
    for (final item in TrafficRegionCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficRegionCategory value: $value');
  }
}

