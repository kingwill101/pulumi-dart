// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../toolset_open_api_toolset/toolset_open_api_toolset.dart';

/// The set of arguments for Toolset.
class ToolsetArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> app;

  /// The description of the toolset.
  final Input<String>? description;

  /// The display name of the toolset. Must be unique within the same app.
  final Input<String>? displayName;

  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final Input<String>? executionType;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  final Input<ToolsetOpenApiToolset>? openApiToolset;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID to use for the toolset, which will become the final component of
  /// the toolset's resource name. If not provided, a unique ID will be
  /// automatically assigned for the toolset.
  final Input<String> toolsetId;

  ToolsetArgs({
    required this.app,
    this.description,
    this.displayName,
    this.executionType,
    required this.location,
    this.openApiToolset,
    this.project,
    required this.toolsetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['app'] = app;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final executionTypeValue = executionType;
    if (executionTypeValue != null) {
      map['executionType'] = executionTypeValue;
    }
    map['location'] = location;
    final openApiToolsetValue = openApiToolset;
    if (openApiToolsetValue != null) {
      map['openApiToolset'] = Input.mapOptionalInputValue<ToolsetOpenApiToolset,
          Map<String, dynamic>>(openApiToolsetValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['toolsetId'] = toolsetId;
    return map;
  }

  factory ToolsetArgs.fromMap(Map<String, dynamic> map) {
    return ToolsetArgs(
      app: Input.asInput<String>(map['app']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      executionType: Input.asOptionalInput<String>(map['executionType']),
      location: Input.asInput<String>(map['location']),
      openApiToolset:
          Input.asOptionalInput<ToolsetOpenApiToolset>(map['openApiToolset']),
      project: Input.asOptionalInput<String>(map['project']),
      toolsetId: Input.asInput<String>(map['toolsetId']),
    );
  }
}
