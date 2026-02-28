// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointClientRouteEnforcementOption {
  final bool enforced;

  /// Creates a new [GetEndpointClientRouteEnforcementOption].
  /// [enforced] Required.
  GetEndpointClientRouteEnforcementOption({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforced': enforced,
    };
  }

  factory GetEndpointClientRouteEnforcementOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointClientRouteEnforcementOption(
      enforced: map['enforced'] as bool,
    );
  }
}

