/// Configures which HTTP method to use to probe the backends defined under backendPools.
enum FrontDoorHealthProbeMethod {
  valueGET("GET"),
  valueHEAD("HEAD");

  const FrontDoorHealthProbeMethod(this.value);
  final String value;

  static FrontDoorHealthProbeMethod fromValue(String value) {
    for (final item in FrontDoorHealthProbeMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorHealthProbeMethod value: $value');
  }
}

