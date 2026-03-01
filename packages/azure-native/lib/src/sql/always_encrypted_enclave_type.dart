/// Type of enclave requested on the elastic pool.
enum AlwaysEncryptedEnclaveType {
  valueDefault("Default"),
  valueVBS("VBS");

  const AlwaysEncryptedEnclaveType(this.value);
  final String value;

  static AlwaysEncryptedEnclaveType fromValue(String value) {
    for (final item in AlwaysEncryptedEnclaveType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysEncryptedEnclaveType value: $value');
  }
}

