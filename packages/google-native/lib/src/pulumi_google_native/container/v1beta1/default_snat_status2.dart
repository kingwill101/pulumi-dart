// ignore_for_file: unused_element, unnecessary_cast

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatus2 {
  /// Disables cluster default sNAT rules.
  final bool? disabled;

  DefaultSnatStatus2({
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

  factory DefaultSnatStatus2.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatus2(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
