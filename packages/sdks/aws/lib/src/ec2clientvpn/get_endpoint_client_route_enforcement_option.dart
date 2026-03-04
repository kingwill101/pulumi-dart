// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointClientRouteEnforcementOption {
  final pulumi.Input<bool> enforced;

  /// Creates a new [GetEndpointClientRouteEnforcementOption].
  /// [enforced] Required.
  GetEndpointClientRouteEnforcementOption({required this.enforced});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enforced': enforced};
  }

  factory GetEndpointClientRouteEnforcementOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEndpointClientRouteEnforcementOption(
      enforced: pulumi.Input.fromValue(map['enforced'] as bool),
    );
  }
}
