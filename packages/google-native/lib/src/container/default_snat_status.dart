// ignore_for_file: unused_element, unnecessary_cast

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatus {
  /// Disables cluster default sNAT rules.
  final bool? disabled;

  /// Creates a new [DefaultSnatStatus].
  /// [disabled] Disables cluster default sNAT rules.
  DefaultSnatStatus({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory DefaultSnatStatus.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatus(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
