/// Configures which HTTP method to use to probe the backends defined under backendPools.
enum FrontDoorHealthProbeMethod {
  valueGET("GET"),
  valueHEAD("HEAD");

  const FrontDoorHealthProbeMethod(this.wireValue);
  final String wireValue;

  static FrontDoorHealthProbeMethod fromValue(String value) {
    for (final item in FrontDoorHealthProbeMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorHealthProbeMethod value: $value');
  }
}
