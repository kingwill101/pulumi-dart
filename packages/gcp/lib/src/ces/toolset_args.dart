// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_open_api_toolset.dart';

/// {@template pulumi_ces_toolset_toolset_args_doc}
/// The set of arguments for Toolset.
/// {@endtemplate}
/// {@macro pulumi_ces_toolset_toolset_args_doc}
class ToolsetArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;
  /// The description of the toolset.
  final pulumi.Input<String>? description;
  /// The display name of the toolset. Must be unique within the same app.
  final pulumi.Input<String>? displayName;
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String>? executionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolset>? openApiToolset;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID to use for the toolset, which will become the final component of
  /// the toolset's resource name. If not provided, a unique ID will be
  /// automatically assigned for the toolset.
  final pulumi.Input<String> toolsetId;

  /// Creates a new [ToolsetArgs].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [description] The description of the toolset.
  /// [displayName] The display name of the toolset. Must be unique within the same app.
  /// [executionType] Possible values:
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [openApiToolset] A toolset that contains a list of tools that are defined by an OpenAPI
  /// [project] The ID of the project in which the resource belongs.
  /// [toolsetId] The ID to use for the toolset, which will become the final component of
  ToolsetArgs({
    required String app,
    String? description,
    String? displayName,
    String? executionType,
    required String location,
    ToolsetOpenApiToolset? openApiToolset,
    String? project,
    required String toolsetId,
  }) :
      app = pulumi.Input.asInput<String>(app),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      executionType = pulumi.Input.asOptionalInput<String>(executionType),
      location = pulumi.Input.asInput<String>(location),
      openApiToolset = pulumi.Input.asOptionalInput<ToolsetOpenApiToolset>(openApiToolset),
      project = pulumi.Input.asOptionalInput<String>(project),
      toolsetId = pulumi.Input.asInput<String>(toolsetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'description': ?description,
      'displayName': ?displayName,
      'executionType': ?executionType,
      'location': location,
      'openApiToolset': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolset, Map<String, dynamic>>(openApiToolset, (value) => value.toMap()),
      'project': ?project,
      'toolsetId': toolsetId,
    };
  }

  factory ToolsetArgs.fromMap(Map<String, dynamic> map) {
    return ToolsetArgs(
      app: map['app'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      executionType: map['executionType'] == null ? null : map['executionType'] as String,
      location: map['location'] as String,
      openApiToolset: map['openApiToolset'] == null ? null : ToolsetOpenApiToolset.fromMap((map['openApiToolset'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      toolsetId: map['toolsetId'] as String,
    );
  }
}

