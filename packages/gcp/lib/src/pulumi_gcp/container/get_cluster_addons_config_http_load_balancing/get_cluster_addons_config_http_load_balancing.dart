// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigHttpLoadBalancing {
  final bool disabled;

  GetClusterAddonsConfigHttpLoadBalancing({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterAddonsConfigHttpLoadBalancing.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigHttpLoadBalancing(
      disabled: map['disabled'] as bool,
    );
  }
}
