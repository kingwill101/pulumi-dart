// ignore_for_file: unused_element, unnecessary_cast

class GetDomainNodeToNodeEncryption2 {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  GetDomainNodeToNodeEncryption2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetDomainNodeToNodeEncryption2.fromMap(Map<String, dynamic> map) {
    return GetDomainNodeToNodeEncryption2(
      enabled: map['enabled'] as bool,
    );
  }
}
