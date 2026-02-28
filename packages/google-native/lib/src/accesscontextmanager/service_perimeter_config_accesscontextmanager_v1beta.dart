// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_accessible_services_accesscontextmanager_v1beta.dart';

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.
class ServicePerimeterConfigAccesscontextmanagerV1beta {
  /// A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  final List<String>? accessLevels;

  /// A list of Google Cloud resources that are inside of the service perimeter. Currently only projects are allowed. Format: `projects/{project_number}`
  final List<String>? resources;

  /// Google Cloud services that are subject to the Service Perimeter restrictions. Must contain a list of services. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  final List<String>? restrictedServices;

  /// Google Cloud services that are not subject to the Service Perimeter restrictions. Deprecated. Must be set to a single wildcard "*". The wildcard means that unless explicitly specified by "restricted_services" list, any service is treated as unrestricted.
  final List<String>? unrestrictedServices;

  /// Beta. Configuration for APIs allowed within Perimeter.
  final VpcAccessibleServicesAccesscontextmanagerV1beta? vpcAccessibleServices;

  /// Creates a new [ServicePerimeterConfigAccesscontextmanagerV1beta].
  /// [accessLevels] A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  /// [resources] A list of Google Cloud resources that are inside of the service perimeter. Currently only projects are allowed. Format: `projects/{project_number}`
  /// [restrictedServices] Google Cloud services that are subject to the Service Perimeter restrictions. Must contain a list of services. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  /// [unrestrictedServices] Google Cloud services that are not subject to the Service Perimeter restrictions. Deprecated. Must be set to a single wildcard "*". The wildcard means that unless explicitly specified by "restricted_services" list, any service is treated as unrestricted.
  /// [vpcAccessibleServices] Beta. Configuration for APIs allowed within Perimeter.
  ServicePerimeterConfigAccesscontextmanagerV1beta({
    this.accessLevels,
    this.resources,
    this.restrictedServices,
    this.unrestrictedServices,
    this.vpcAccessibleServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = accessLevelsValue;
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    final restrictedServicesValue = restrictedServices;
    if (restrictedServicesValue != null) {
      map['restrictedServices'] = restrictedServicesValue;
    }
    final unrestrictedServicesValue = unrestrictedServices;
    if (unrestrictedServicesValue != null) {
      map['unrestrictedServices'] = unrestrictedServicesValue;
    }
    final vpcAccessibleServicesValue = vpcAccessibleServices;
    if (vpcAccessibleServicesValue != null) {
      map['vpcAccessibleServices'] = vpcAccessibleServicesValue.toMap();
    }
    return map;
  }

  factory ServicePerimeterConfigAccesscontextmanagerV1beta.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterConfigAccesscontextmanagerV1beta(
      accessLevels: map['accessLevels'] == null
          ? null
          : (map['accessLevels'] as List).cast<String>(),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      restrictedServices: map['restrictedServices'] == null
          ? null
          : (map['restrictedServices'] as List).cast<String>(),
      unrestrictedServices: map['unrestrictedServices'] == null
          ? null
          : (map['unrestrictedServices'] as List).cast<String>(),
      vpcAccessibleServices: map['vpcAccessibleServices'] == null
          ? null
          : VpcAccessibleServicesAccesscontextmanagerV1beta.fromMap(
              (map['vpcAccessibleServices'] as Map).cast<String, dynamic>()),
    );
  }
}
