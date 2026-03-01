// ignore_for_file: unused_element, unnecessary_cast

import 'service_perimeter_config_response_accesscontextmanager_v1beta.dart';

/// Result data returned by getServicePerimeter.
class GetServicePerimeterAccesscontextmanagerV1betaResult {
  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  final String description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  final String name;

  /// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  final String perimeterType;

  /// Current ServicePerimeter configuration. Specifies sets of resources, restricted/unrestricted services and access levels that determine perimeter content and boundaries.
  final ServicePerimeterConfigResponseAccesscontextmanagerV1beta status;

  /// Human readable title. Must be unique within the Policy.
  final String title;

  /// Creates a new [GetServicePerimeterAccesscontextmanagerV1betaResult].
  /// [description] Description of the `ServicePerimeter` and its use. Does not affect behavior.
  /// [name] Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  /// [perimeterType] Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  /// [status] Current ServicePerimeter configuration. Specifies sets of resources, restricted/unrestricted services and access levels that determine perimeter content and boundaries.
  /// [title] Human readable title. Must be unique within the Policy.
  GetServicePerimeterAccesscontextmanagerV1betaResult({
    required this.description,
    required this.name,
    required this.perimeterType,
    required this.status,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'perimeterType': perimeterType,
      'status': status.toMap(),
      'title': title,
    };
  }

  factory GetServicePerimeterAccesscontextmanagerV1betaResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServicePerimeterAccesscontextmanagerV1betaResult(
      description: map['description'] as String,
      name: map['name'] as String,
      perimeterType: map['perimeterType'] as String,
      status: ServicePerimeterConfigResponseAccesscontextmanagerV1beta.fromMap(
        (map['status'] as Map).cast<String, dynamic>(),
      ),
      title: map['title'] as String,
    );
  }
}
