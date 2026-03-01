// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceGuestAttributesQueryValue {
  /// Key of the guest_attribute.
  final String key;

  /// Namespace of the guest_attribute.
  final String namespace;

  /// Value of the guest_attribute.
  final String value;

  /// Creates a new [GetInstanceGuestAttributesQueryValue].
  /// [key] Key of the guest_attribute.
  /// [namespace] Namespace of the guest_attribute.
  /// [value] Value of the guest_attribute.
  GetInstanceGuestAttributesQueryValue({
    required this.key,
    required this.namespace,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'namespace': namespace,
      'value': value,
    };
  }

  factory GetInstanceGuestAttributesQueryValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceGuestAttributesQueryValue(
      key: map['key'] as String,
      namespace: map['namespace'] as String,
      value: map['value'] as String,
    );
  }
}
