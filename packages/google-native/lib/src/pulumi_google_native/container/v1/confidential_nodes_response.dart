// ignore_for_file: unused_element, unnecessary_cast

/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodesResponse {
  /// Whether Confidential Nodes feature is enabled.
  final bool enabled;

  ConfidentialNodesResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfidentialNodesResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodesResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
