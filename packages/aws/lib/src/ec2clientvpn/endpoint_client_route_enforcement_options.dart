// ignore_for_file: unused_element, unnecessary_cast


class EndpointClientRouteEnforcementOptions {
  /// Enable or disable Client Route Enforcement. The default is `false` (not enabled).
  final bool? enforced;

  /// Creates a new [EndpointClientRouteEnforcementOptions].
  /// [enforced] Enable or disable Client Route Enforcement. The default is `false` (not enabled).
  EndpointClientRouteEnforcementOptions({
    this.enforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforced': ?enforced,
    };
  }

  factory EndpointClientRouteEnforcementOptions.fromMap(Map<String, dynamic> map) {
    return EndpointClientRouteEnforcementOptions(
      enforced: map['enforced'] == null ? null : map['enforced'] as bool,
    );
  }
}

