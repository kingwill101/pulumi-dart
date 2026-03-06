// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointClientRouteEnforcementOptions {
  /// Enable or disable Client Route Enforcement. The default is `false` (not enabled).
  final pulumi.Input<bool>? enforced;

  /// Creates a new [EndpointClientRouteEnforcementOptions].
  /// [enforced] Enable or disable Client Route Enforcement. The default is `false` (not enabled).
  const EndpointClientRouteEnforcementOptions({
    this.enforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforced': ?enforced,
    };
  }

  factory EndpointClientRouteEnforcementOptions.fromMap(Map<String, dynamic> map) {
    return EndpointClientRouteEnforcementOptions(
      enforced: (() { final guardedValue = map['enforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

