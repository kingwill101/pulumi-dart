// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestEnclaveOptions {
  /// Whether Nitro Enclaves will be enabled on the instance. Defaults to `false`.
  ///
  /// For more information, see the documentation on [Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html).
  final bool? enabled;

  /// Creates a new [SpotInstanceRequestEnclaveOptions].
  /// [enabled] Whether Nitro Enclaves will be enabled on the instance. Defaults to `false`.
  SpotInstanceRequestEnclaveOptions({
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

  factory SpotInstanceRequestEnclaveOptions.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestEnclaveOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
