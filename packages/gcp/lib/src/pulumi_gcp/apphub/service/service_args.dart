// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_attributes/service_attributes.dart';

/// The set of arguments for Service.
class ServiceArgs {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttributes>? attributes;

  /// User-defined description of a Service.
  final pulumi.Input<String>? description;

  /// Immutable. The resource name of the original discovered service.
  final pulumi.Input<String> discoveredService;

  /// User-defined name for the Service.
  final pulumi.Input<String>? displayName;

  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Service identifier.
  final pulumi.Input<String> serviceId;

  ServiceArgs({
    required this.applicationId,
    this.attributes,
    this.description,
    required this.discoveredService,
    this.displayName,
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<ServiceAttributes,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['discoveredService'] = discoveredService;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      attributes:
          pulumi.Input.asOptionalInput<ServiceAttributes>(map['attributes']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      discoveredService: pulumi.Input.asInput<String>(map['discoveredService']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
