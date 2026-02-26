// ignore_for_file: unused_element, unnecessary_cast

class GetDomainNodeToNodeEncryption {
  /// Whether node to node encryption is enabled.
  final bool enabled;

  GetDomainNodeToNodeEncryption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetDomainNodeToNodeEncryption.fromMap(Map<String, dynamic> map) {
    return GetDomainNodeToNodeEncryption(
      enabled: map['enabled'] as bool,
    );
  }
}
