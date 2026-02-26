// ignore_for_file: unused_element, unnecessary_cast

import 'service_perimeter_config_response2.dart';

/// Result data returned by getServicePerimeter.
class GetServicePerimeterResult2 {
  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  final String description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  final String name;

  /// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  final String perimeterType;

  /// Current ServicePerimeter configuration. Specifies sets of resources, restricted/unrestricted services and access levels that determine perimeter content and boundaries.
  final ServicePerimeterConfigResponse2 status;

  /// Human readable title. Must be unique within the Policy.
  final String title;

  GetServicePerimeterResult2({
    required this.description,
    required this.name,
    required this.perimeterType,
    required this.status,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['perimeterType'] = perimeterType;
    map['status'] = status.toMap();
    map['title'] = title;
    return map;
  }

  factory GetServicePerimeterResult2.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterResult2(
      description: map['description'] as String,
      name: map['name'] as String,
      perimeterType: map['perimeterType'] as String,
      status: ServicePerimeterConfigResponse2.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
