// ignore_for_file: unused_element, unnecessary_cast


/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodes {
  /// Whether Confidential Nodes feature is enabled.
  final bool? enabled;

  /// Creates a new [ConfidentialNodes].
  /// [enabled] Whether Confidential Nodes feature is enabled.
  ConfidentialNodes({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfidentialNodes.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodes(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

