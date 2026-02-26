/// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
enum VersionServingStatus2 {
  servingStatusUnspecified("SERVING_STATUS_UNSPECIFIED"),
  serving("SERVING"),
  stopped("STOPPED");

  const VersionServingStatus2(this.value);
  final String value;

  static VersionServingStatus2 fromValue(String value) {
    for (final item in VersionServingStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionServingStatus2 value: $value');
  }
}
