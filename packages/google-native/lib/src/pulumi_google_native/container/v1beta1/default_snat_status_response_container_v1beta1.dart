// ignore_for_file: unused_element, unnecessary_cast

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusResponseContainerV1beta1 {
  /// Disables cluster default sNAT rules.
  final bool disabled;

  DefaultSnatStatusResponseContainerV1beta1({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory DefaultSnatStatusResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DefaultSnatStatusResponseContainerV1beta1(
      disabled: map['disabled'] as bool,
    );
  }
}
