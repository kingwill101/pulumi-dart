// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'database_engine_info.dart';

/// The set of arguments for ConversionWorkspace.
class ConversionWorkspaceArgs {
  /// Required. The ID of the conversion workspace to create.
  final Input<String> conversionWorkspaceId;

  /// The destination engine details.
  final Input<DatabaseEngineInfo> destination;

  /// Optional. The display name for the workspace.
  final Input<String>? displayName;

  /// Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  final Input<Map<String, String>>? globalSettings;
  final Input<String>? location;

  /// Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  final Input<String>? name;
  final Input<String>? project;

  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// The source engine details.
  final Input<DatabaseEngineInfo> source;

  ConversionWorkspaceArgs({
    required this.conversionWorkspaceId,
    required this.destination,
    this.displayName,
    this.globalSettings,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversionWorkspaceId'] = conversionWorkspaceId;
    map['destination'] =
        Input.mapInputValue<DatabaseEngineInfo, Map<String, dynamic>>(
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
        Input.mapInputValue<DatabaseEngineInfo, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory ConversionWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceArgs(
      conversionWorkspaceId:
          Input.asInput<String>(map['conversionWorkspaceId']),
      destination: Input.asInput<DatabaseEngineInfo>(map['destination']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      globalSettings:
          Input.asOptionalInput<Map<String, String>>(map['globalSettings']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      source: Input.asInput<DatabaseEngineInfo>(map['source']),
    );
  }
}
