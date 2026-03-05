/// The original value of the network features type available to the volume at the time it was created.
enum NetworkFeatures {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueBasicStandard("Basic_Standard"),
  valueStandardBasic("Standard_Basic");

  const NetworkFeatures(this.wireValue);
  final String wireValue;

  static NetworkFeatures fromValue(String value) {
    for (final item in NetworkFeatures.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFeatures value: $value');
  }
}

