// ignore_for_file: unused_element, unnecessary_cast

class EndpointClientRouteEnforcementOptions {
  /// Enable or disable Client Route Enforcement. The default is `false` (not enabled).
  final bool? enforced;

  EndpointClientRouteEnforcementOptions({
    this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enforcedValue = enforced;
    if (enforcedValue != null) {
      map['enforced'] = enforcedValue;
    }
    return map;
  }

  factory EndpointClientRouteEnforcementOptions.fromMap(
      Map<String, dynamic> map) {
    return EndpointClientRouteEnforcementOptions(
      enforced: map['enforced'] == null ? null : map['enforced'] as bool,
    );
  }
}
