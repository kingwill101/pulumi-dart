// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Api.
class ApiArgs {
  /// Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  final pulumi.Input<String> apiId;

  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
  /// If not specified, a new Service will automatically be created in the same project as this API.
  final pulumi.Input<String>? managedService;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ApiArgs({
    required this.apiId,
    this.displayName,
    this.labels,
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
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      managedService:
          pulumi.Input.asOptionalInput<String>(map['managedService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
