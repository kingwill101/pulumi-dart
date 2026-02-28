// ignore_for_file: unused_element, unnecessary_cast

class ServicePerimetersServicePerimeterSpecVpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter.
  /// Must be empty unless `enableRestriction` is True.
  final List<String>? allowedServices;

  /// Whether to restrict API calls within the Service Perimeter to the
  /// list of APIs specified in 'allowedServices'.
  final bool? enableRestriction;

  /// Creates a new [ServicePerimetersServicePerimeterSpecVpcAccessibleServices].
  /// [allowedServices] The list of APIs usable within the Service Perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the
  ServicePerimetersServicePerimeterSpecVpcAccessibleServices({
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

  factory ServicePerimetersServicePerimeterSpecVpcAccessibleServices.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecVpcAccessibleServices(
      allowedServices: map['allowedServices'] == null
          ? null
          : (map['allowedServices'] as List).cast<String>(),
      enableRestriction: map['enableRestriction'] == null
          ? null
          : map['enableRestriction'] as bool,
    );
  }
}
