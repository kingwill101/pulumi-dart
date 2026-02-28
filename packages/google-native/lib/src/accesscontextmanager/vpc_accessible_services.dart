// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
class VpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  final List<String>? allowedServices;

  /// Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  final bool? enableRestriction;

  /// Creates a new [VpcAccessibleServices].
  /// [allowedServices] The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  VpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedServicesValue = allowedServices;
    if (allowedServicesValue != null) {
      map['allowedServices'] = allowedServicesValue;
    }
    final enableRestrictionValue = enableRestriction;
    if (enableRestrictionValue != null) {
      map['enableRestriction'] = enableRestrictionValue;
    }
    return map;
  }

  factory VpcAccessibleServices.fromMap(Map<String, dynamic> map) {
    return VpcAccessibleServices(
      allowedServices: map['allowedServices'] == null
          ? null
          : (map['allowedServices'] as List).cast<String>(),
      enableRestriction: map['enableRestriction'] == null
          ? null
          : map['enableRestriction'] as bool,
    );
  }
}
