// ignore_for_file: unused_element, unnecessary_cast

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusResponse2 {
  /// Disables cluster default sNAT rules.
  final bool disabled;

  DefaultSnatStatusResponse2({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory DefaultSnatStatusResponse2.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatusResponse2(
      disabled: map['disabled'] as bool,
    );
  }
}
