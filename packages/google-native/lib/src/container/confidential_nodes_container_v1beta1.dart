// ignore_for_file: unused_element, unnecessary_cast

/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodesContainerV1beta1 {
  /// Whether Confidential Nodes feature is enabled.
  final bool? enabled;

  /// Creates a new [ConfidentialNodesContainerV1beta1].
  /// [enabled] Whether Confidential Nodes feature is enabled.
  ConfidentialNodesContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ConfidentialNodesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodesContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
