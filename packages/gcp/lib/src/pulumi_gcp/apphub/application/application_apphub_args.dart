// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_attributes/application_attributes.dart';
import '../application_scope/application_scope.dart';

/// The set of arguments for Application.
class ApplicationApphubArgs {
  /// Required. The Application identifier.
  final pulumi.Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributes>? attributes;

  /// Optional. User-defined description of an Application.
  final pulumi.Input<String>? description;

  /// Optional. User-defined name for the Application.
  final pulumi.Input<String>? displayName;

  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Scope of an application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationScope> scope;

  ApplicationApphubArgs({
    required this.applicationId,
    this.attributes,
    this.description,
    this.displayName,
    required this.location,
    this.project,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
          ApplicationAttributes,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scope'] =
        pulumi.Input.mapInputValue<ApplicationScope, Map<String, dynamic>>(
            scope, (value) => value.toMap());
    return map;
  }

  factory ApplicationApphubArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationApphubArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      attributes: pulumi.Input.asOptionalInput<ApplicationAttributes>(
          map['attributes']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scope: pulumi.Input.asInput<ApplicationScope>(map['scope']),
    );
  }
}
