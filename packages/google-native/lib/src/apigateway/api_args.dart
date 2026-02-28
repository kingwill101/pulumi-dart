// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_api_args_doc}
class ApiArgs {
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

  /// Creates a new [ApiArgs].
  /// [apiId] Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [managedService] Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  /// [project] Optional.
  ApiArgs({
    required String apiId,
    String? displayName,
    Map<String, String>? labels,
    String? location,
    String? managedService,
    String? project,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        managedService = pulumi.Input.asOptionalInput<String>(managedService),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiId: map['apiId'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      managedService: map['managedService'] == null
          ? null
          : map['managedService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
