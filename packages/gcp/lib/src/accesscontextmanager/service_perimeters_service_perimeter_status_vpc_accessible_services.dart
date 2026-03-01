// ignore_for_file: unused_element, unnecessary_cast


class ServicePerimetersServicePerimeterStatusVpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter.
  /// Must be empty unless `enableRestriction` is True.
  final List<String>? allowedServices;
  /// Whether to restrict API calls within the Service Perimeter to the
  /// list of APIs specified in 'allowedServices'.
  final bool? enableRestriction;

  /// Creates a new [ServicePerimetersServicePerimeterStatusVpcAccessibleServices].
  /// [allowedServices] The list of APIs usable within the Service Perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the
  ServicePerimetersServicePerimeterStatusVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': ?allowedServices,
      'enableRestriction': ?enableRestriction,
    };
  }

  factory ServicePerimetersServicePerimeterStatusVpcAccessibleServices.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusVpcAccessibleServices(
      allowedServices: map['allowedServices'] == null ? null : (map['allowedServices'] as List).cast<String>(),
      enableRestriction: map['enableRestriction'] == null ? null : map['enableRestriction'] as bool,
    );
  }
}

