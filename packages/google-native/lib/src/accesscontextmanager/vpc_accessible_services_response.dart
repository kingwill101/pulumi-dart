// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
class VpcAccessibleServicesResponse {
  /// The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  final List<String> allowedServices;

  /// Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  final bool enableRestriction;

  /// Creates a new [VpcAccessibleServicesResponse].
  /// [allowedServices] The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  VpcAccessibleServicesResponse({
    required this.allowedServices,
    required this.enableRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': allowedServices,
      'enableRestriction': enableRestriction,
    };
  }

  factory VpcAccessibleServicesResponse.fromMap(Map<String, dynamic> map) {
    return VpcAccessibleServicesResponse(
      allowedServices: (map['allowedServices'] as List).cast<String>(),
      enableRestriction: map['enableRestriction'] as bool,
    );
  }
}
