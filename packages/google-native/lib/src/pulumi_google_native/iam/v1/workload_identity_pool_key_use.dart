/// Required. The purpose of the key.
enum WorkloadIdentityPoolKeyUse {
  keyUseUnspecified("KEY_USE_UNSPECIFIED"),
  encryption("ENCRYPTION");

  const WorkloadIdentityPoolKeyUse(this.value);
  final String value;

  static WorkloadIdentityPoolKeyUse fromValue(String value) {
    for (final item in WorkloadIdentityPoolKeyUse.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadIdentityPoolKeyUse value: $value');
  }
}
