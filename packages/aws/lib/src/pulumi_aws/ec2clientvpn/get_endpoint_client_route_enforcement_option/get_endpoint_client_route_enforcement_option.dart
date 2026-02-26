// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointClientRouteEnforcementOption {
  final bool enforced;

  GetEndpointClientRouteEnforcementOption({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory GetEndpointClientRouteEnforcementOption.fromMap(
      Map<String, dynamic> map) {
    return GetEndpointClientRouteEnforcementOption(
      enforced: map['enforced'] as bool,
    );
  }
}
