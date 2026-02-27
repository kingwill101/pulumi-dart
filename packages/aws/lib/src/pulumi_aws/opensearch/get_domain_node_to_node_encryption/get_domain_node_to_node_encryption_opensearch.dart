// ignore_for_file: unused_element, unnecessary_cast

class GetDomainNodeToNodeEncryptionOpensearch {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  GetDomainNodeToNodeEncryptionOpensearch({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetDomainNodeToNodeEncryptionOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainNodeToNodeEncryptionOpensearch(
      enabled: map['enabled'] as bool,
    );
  }
}
