// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_attributes/application_attributes.dart';
import '../application_scope/application_scope.dart';

/// The set of arguments for Application.
class ApplicationArgs2 {
  /// Required. The Application identifier.
  final Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final Input<ApplicationAttributes>? attributes;

  /// Optional. User-defined description of an Application.
  final Input<String>? description;

  /// Optional. User-defined name for the Application.
  final Input<String>? displayName;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>. See documentation of `projectsId`.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Scope of an application.
  /// Structure is documented below.
  final Input<ApplicationScope> scope;

  ApplicationArgs2({
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
      map['attributes'] = Input.mapOptionalInputValue<ApplicationAttributes,
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
    map['scope'] = Input.mapInputValue<ApplicationScope, Map<String, dynamic>>(
        scope, (value) => value.toMap());
    return map;
  }

  factory ApplicationArgs2.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs2(
      applicationId: Input.asInput<String>(map['applicationId']),
      attributes:
          Input.asOptionalInput<ApplicationAttributes>(map['attributes']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asInput<ApplicationScope>(map['scope']),
    );
  }
}
