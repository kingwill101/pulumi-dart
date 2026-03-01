// ignore_for_file: unused_element, unnecessary_cast

class GetDomainNodeToNodeEncryption {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Creates a new [GetDomainNodeToNodeEncryption].
  /// [enabled] Enabled disabled toggle for off-peak update window
  GetDomainNodeToNodeEncryption({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetDomainNodeToNodeEncryption.fromMap(Map<String, dynamic> map) {
    return GetDomainNodeToNodeEncryption(enabled: map['enabled'] as bool);
  }
}
