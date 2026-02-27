// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Api.
class ApiApigatewayV1betaArgs {
  /// Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  final pulumi.Input<String> apiId;

  /// Optional. Display name.
  final pulumi.Input<String>? displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  final pulumi.Input<String>? managedService;
  final pulumi.Input<String>? project;

  ApiApigatewayV1betaArgs({
    required this.apiId,
    this.displayName,
    this.labels,
    this.location,
    this.managedService,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final managedServiceValue = managedService;
    if (managedServiceValue != null) {
      map['managedService'] = managedServiceValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ApiApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ApiApigatewayV1betaArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      managedService:
          pulumi.Input.asOptionalInput<String>(map['managedService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
