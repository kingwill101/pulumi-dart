// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_attributes/service_attributes.dart';

/// The set of arguments for Service.
class ServiceArgs {
  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final Input<ServiceAttributes>? attributes;

  /// User-defined description of a Service.
  final Input<String>? description;

  /// Immutable. The resource name of the original discovered service.
  final Input<String> discoveredService;

  /// User-defined name for the Service.
  final Input<String>? displayName;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Service identifier.
  final Input<String> serviceId;

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
      map['attributes'] =
          Input.mapOptionalInputValue<ServiceAttributes, Map<String, dynamic>>(
              attributesValue, (value) => value.toMap());
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
      applicationId: Input.asInput<String>(map['applicationId']),
      attributes: Input.asOptionalInput<ServiceAttributes>(map['attributes']),
      description: Input.asOptionalInput<String>(map['description']),
      discoveredService: Input.asInput<String>(map['discoveredService']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
