// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_engine_info.dart';

/// {@template pulumi_datamigration_v1_conversion_workspace_args_doc}
/// The set of arguments for ConversionWorkspace.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_conversion_workspace_args_doc}
class ConversionWorkspaceArgs {
  /// Required. The ID of the conversion workspace to create.
  final pulumi.Input<String> conversionWorkspaceId;

  /// The destination engine details.
  final pulumi.Input<DatabaseEngineInfo> destination;

  /// Optional. The display name for the workspace.
  final pulumi.Input<String>? displayName;

  /// Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  final pulumi.Input<Map<String, String>>? globalSettings;
  final pulumi.Input<String>? location;

  /// Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// The source engine details.
  final pulumi.Input<DatabaseEngineInfo> source;

  /// Creates a new [ConversionWorkspaceArgs].
  /// [conversionWorkspaceId] Required. The ID of the conversion workspace to create.
  /// [destination] The destination engine details.
  /// [displayName] Optional. The display name for the workspace.
  /// [globalSettings] Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  /// [location] Optional.
  /// [name] Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// [project] Optional.
  /// [requestId] A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [source] The source engine details.
  ConversionWorkspaceArgs({
    required String conversionWorkspaceId,
    required DatabaseEngineInfo destination,
    String? displayName,
    Map<String, String>? globalSettings,
    String? location,
    String? name,
    String? project,
    String? requestId,
    required DatabaseEngineInfo source,
  })  : conversionWorkspaceId =
            pulumi.Input.asInput<String>(conversionWorkspaceId),
        destination = pulumi.Input.asInput<DatabaseEngineInfo>(destination),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        globalSettings =
            pulumi.Input.asOptionalInput<Map<String, String>>(globalSettings),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        source = pulumi.Input.asInput<DatabaseEngineInfo>(source);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversionWorkspaceId'] = conversionWorkspaceId;
    map['destination'] =
        pulumi.Input.mapInputValue<DatabaseEngineInfo, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final globalSettingsValue = globalSettings;
    if (globalSettingsValue != null) {
      map['globalSettings'] = globalSettingsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['source'] =
        pulumi.Input.mapInputValue<DatabaseEngineInfo, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory ConversionWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceArgs(
      conversionWorkspaceId: map['conversionWorkspaceId'] as String,
      destination: DatabaseEngineInfo.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      globalSettings: map['globalSettings'] == null
          ? null
          : (map['globalSettings'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      source: DatabaseEngineInfo.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
