// ignore_for_file: unused_element, unnecessary_cast

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusContainerV1beta1 {
  /// Disables cluster default sNAT rules.
  final bool? disabled;

  DefaultSnatStatusContainerV1beta1({
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

  factory DefaultSnatStatusContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatusContainerV1beta1(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
