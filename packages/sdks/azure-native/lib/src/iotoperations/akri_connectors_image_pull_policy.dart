/// The pull policy of the image.
enum AkriConnectorsImagePullPolicy {
  always("Always"),
  ifNotPresent("IfNotPresent"),
  never_("Never");

  const AkriConnectorsImagePullPolicy(this.wireValue);
  final String wireValue;

  static AkriConnectorsImagePullPolicy fromValue(String value) {
    for (final item in AkriConnectorsImagePullPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsImagePullPolicy value: $value');
  }
}

