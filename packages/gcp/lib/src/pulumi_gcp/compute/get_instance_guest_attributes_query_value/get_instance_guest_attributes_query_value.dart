// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceGuestAttributesQueryValue {
  /// Key of the guest_attribute.
  final String key;

  /// Namespace of the guest_attribute.
  final String namespace;

  /// Value of the guest_attribute.
  final String value;

  GetInstanceGuestAttributesQueryValue({
    required this.key,
    required this.namespace,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['namespace'] = namespace;
    map['value'] = value;
    return map;
  }

  factory GetInstanceGuestAttributesQueryValue.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGuestAttributesQueryValue(
      key: map['key'] as String,
      namespace: map['namespace'] as String,
      value: map['value'] as String,
    );
  }
}
