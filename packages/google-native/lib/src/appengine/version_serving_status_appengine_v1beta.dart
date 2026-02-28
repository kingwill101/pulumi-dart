/// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
enum VersionServingStatusAppengineV1beta {
  servingStatusUnspecified("SERVING_STATUS_UNSPECIFIED"),
  serving("SERVING"),
  stopped("STOPPED");

  const VersionServingStatusAppengineV1beta(this.value);
  final String value;

  static VersionServingStatusAppengineV1beta fromValue(String value) {
    for (final item in VersionServingStatusAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown VersionServingStatusAppengineV1beta value: $value');
  }
}
