// ignore_for_file: unused_element, unnecessary_cast

class GetClusterDefaultSnatStatus {
  /// When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final bool disabled;

  GetClusterDefaultSnatStatus({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterDefaultSnatStatus.fromMap(Map<String, dynamic> map) {
    return GetClusterDefaultSnatStatus(
      disabled: map['disabled'] as bool,
    );
  }
}
