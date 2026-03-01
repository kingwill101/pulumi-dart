/// The pull policy of the image.
enum AkriConnectorsImagePullPolicy {
  always("Always"),
  ifNotPresent("IfNotPresent"),
  never("Never");

  const AkriConnectorsImagePullPolicy(this.value);
  final String value;

  static AkriConnectorsImagePullPolicy fromValue(String value) {
    for (final item in AkriConnectorsImagePullPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsImagePullPolicy value: $value');
  }
}

