/// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
enum VersionServingStatus {
  servingStatusUnspecified("SERVING_STATUS_UNSPECIFIED"),
  serving("SERVING"),
  stopped("STOPPED");

  const VersionServingStatus(this.value);
  final String value;

  static VersionServingStatus fromValue(String value) {
    for (final item in VersionServingStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionServingStatus value: $value');
  }
}

