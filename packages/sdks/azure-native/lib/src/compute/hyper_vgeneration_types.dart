/// Specifies the HyperVGenerationType of the VirtualMachine created from the image. From API Version 2019-03-01 if the image source is a blob, then we need the user to specify the value, if the source is managed resource like disk or snapshot, we may require the user to specify the property if we cannot deduce it from the source managed resource.
enum HyperVGenerationTypes {
  v1("V1"),
  v2("V2");

  const HyperVGenerationTypes(this.wireValue);
  final String wireValue;

  static HyperVGenerationTypes fromValue(String value) {
    for (final item in HyperVGenerationTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVGenerationTypes value: $value');
  }
}

