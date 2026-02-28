// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy.dart';
import 'service_perimeters_service_perimeter_spec_ingress_policy.dart';
import 'service_perimeters_service_perimeter_spec_vpc_accessible_services.dart';

class ServicePerimetersServicePerimeterSpec {
  /// A list of AccessLevel resource names that allow resources within
  /// the ServicePerimeter to be accessed from the internet.
  /// AccessLevels listed must be in the same policy as this
  /// ServicePerimeter. Referencing a nonexistent AccessLevel is a
  /// syntax error. If no AccessLevel names are listed, resources within
  /// the perimeter can only be accessed via GCP calls with request
  /// origins within the perimeter. For Service Perimeter Bridge, must
  /// be empty.
  /// Format: accessPolicies/{policy_id}/accessLevels/{access_level_name}
  final List<String>? accessLevels;

  /// List of EgressPolicies to apply to the perimeter. A perimeter may
  /// have multiple EgressPolicies, each of which is evaluated separately.
  /// Access is granted if any EgressPolicy grants it. Must be empty for
  /// a perimeter bridge.
  /// Structure is documented below.
  final List<ServicePerimetersServicePerimeterSpecEgressPolicy>? egressPolicies;

  /// List of `IngressPolicies` to apply to the perimeter. A perimeter may
  /// have multiple `IngressPolicies`, each of which is evaluated
  /// separately. Access is granted if any `Ingress Policy` grants it.
  /// Must be empty for a perimeter bridge.
  /// Structure is documented below.
  final List<ServicePerimetersServicePerimeterSpecIngressPolicy>?
      ingressPolicies;

  /// A list of GCP resources that are inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final List<String>? resources;

  /// GCP services that are subject to the Service Perimeter
  /// restrictions. Must contain a list of services. For example, if
  /// `storage.googleapis.com` is specified, access to the storage
  /// buckets inside the perimeter must meet the perimeter's access
  /// restrictions.
  final List<String>? restrictedServices;

  /// Specifies how APIs are allowed to communicate within the Service
  /// Perimeter.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterSpecVpcAccessibleServices?
      vpcAccessibleServices;

  /// Creates a new [ServicePerimetersServicePerimeterSpec].
  /// [accessLevels] A list of AccessLevel resource names that allow resources within
  /// [egressPolicies] List of EgressPolicies to apply to the perimeter. A perimeter may
  /// [ingressPolicies] List of `IngressPolicies` to apply to the perimeter. A perimeter may
  /// [resources] A list of GCP resources that are inside of the service perimeter.
  /// [restrictedServices] GCP services that are subject to the Service Perimeter
  /// [vpcAccessibleServices] Specifies how APIs are allowed to communicate within the Service
  ServicePerimetersServicePerimeterSpec({
    this.accessLevels,
    this.egressPolicies,
    this.ingressPolicies,
    this.resources,
    this.restrictedServices,
    this.vpcAccessibleServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = accessLevelsValue;
    }
    final egressPoliciesValue = egressPolicies;
    if (egressPoliciesValue != null) {
      map['egressPolicies'] = pulumi.Input.encodeList<
          ServicePerimetersServicePerimeterSpecEgressPolicy,
          Map<String, dynamic>>(egressPoliciesValue, (value) => value.toMap());
    }
    final ingressPoliciesValue = ingressPolicies;
    if (ingressPoliciesValue != null) {
      map['ingressPolicies'] = pulumi.Input.encodeList<
          ServicePerimetersServicePerimeterSpecIngressPolicy,
          Map<String, dynamic>>(ingressPoliciesValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    final restrictedServicesValue = restrictedServices;
    if (restrictedServicesValue != null) {
      map['restrictedServices'] = restrictedServicesValue;
    }
    final vpcAccessibleServicesValue = vpcAccessibleServices;
    if (vpcAccessibleServicesValue != null) {
      map['vpcAccessibleServices'] = vpcAccessibleServicesValue.toMap();
    }
    return map;
  }

  factory ServicePerimetersServicePerimeterSpec.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpec(
      accessLevels: map['accessLevels'] == null
          ? null
          : (map['accessLevels'] as List).cast<String>(),
      egressPolicies: map['egressPolicies'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServicePerimetersServicePerimeterSpecEgressPolicy>(
              map['egressPolicies'],
              (value) =>
                  ServicePerimetersServicePerimeterSpecEgressPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
      ingressPolicies: map['ingressPolicies'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServicePerimetersServicePerimeterSpecIngressPolicy>(
              map['ingressPolicies'],
              (value) =>
                  ServicePerimetersServicePerimeterSpecIngressPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      restrictedServices: map['restrictedServices'] == null
          ? null
          : (map['restrictedServices'] as List).cast<String>(),
      vpcAccessibleServices: map['vpcAccessibleServices'] == null
          ? null
          : ServicePerimetersServicePerimeterSpecVpcAccessibleServices.fromMap(
              (map['vpcAccessibleServices'] as Map).cast<String, dynamic>()),
    );
  }
}
