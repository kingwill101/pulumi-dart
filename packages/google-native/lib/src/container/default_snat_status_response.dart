// ignore_for_file: unused_element, unnecessary_cast

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusResponse {
  /// Disables cluster default sNAT rules.
  final bool disabled;

  /// Creates a new [DefaultSnatStatusResponse].
  /// [disabled] Disables cluster default sNAT rules.
  DefaultSnatStatusResponse({required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory DefaultSnatStatusResponse.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatusResponse(disabled: map['disabled'] as bool);
  }
}
