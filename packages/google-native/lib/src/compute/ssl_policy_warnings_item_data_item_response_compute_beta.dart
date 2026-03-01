// ignore_for_file: unused_element, unnecessary_cast

class SslPolicyWarningsItemDataItemResponseComputeBeta {
  /// A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
  final String key;

  /// A warning data value corresponding to the key.
  final String value;

  /// Creates a new [SslPolicyWarningsItemDataItemResponseComputeBeta].
  /// [key] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
  /// [value] A warning data value corresponding to the key.
  SslPolicyWarningsItemDataItemResponseComputeBeta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory SslPolicyWarningsItemDataItemResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SslPolicyWarningsItemDataItemResponseComputeBeta(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
