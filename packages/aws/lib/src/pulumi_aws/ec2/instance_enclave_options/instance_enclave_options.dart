// ignore_for_file: unused_element, unnecessary_cast

class InstanceEnclaveOptions {
  /// Whether Nitro Enclaves will be enabled on the instance. Defaults to `false`.
  ///
  /// For more information, see the documentation on [Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html).
  final bool? enabled;

  InstanceEnclaveOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory InstanceEnclaveOptions.fromMap(Map<String, dynamic> map) {
    return InstanceEnclaveOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
