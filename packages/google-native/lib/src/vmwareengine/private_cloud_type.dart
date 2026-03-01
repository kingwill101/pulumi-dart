/// Optional. Type of the private cloud. Defaults to STANDARD.
enum PrivateCloudType {
  standard("STANDARD"),
  timeLimited("TIME_LIMITED"),
  stretched("STRETCHED");

  const PrivateCloudType(this.value);
  final String value;

  static PrivateCloudType fromValue(String value) {
    for (final item in PrivateCloudType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateCloudType value: $value');
  }
}
