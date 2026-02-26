import 'package:pulumi/pulumi.dart';
import 'conversion_workspace_args.dart';
import 'database_engine_info_response.dart';

/// Creates a new conversion workspace in a given project and location.
class ConversionWorkspace extends CustomResource {
  /// Required. The ID of the conversion workspace to create.
  late final Output<String> conversionWorkspaceId;

  /// The timestamp when the workspace resource was created.
  late final Output<String> createTime;

  /// The destination engine details.
  late final Output<DatabaseEngineInfoResponse> destination;

  /// Optional. The display name for the workspace.
  late final Output<String> displayName;

  /// Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  late final Output<Map<String, String>> globalSettings;

  /// Whether the workspace has uncommitted changes (changes which were made after the workspace was committed).
  late final Output<bool> hasUncommittedChanges;

  /// The latest commit ID.
  late final Output<String> latestCommitId;

  /// The timestamp when the workspace was committed.
  late final Output<String> latestCommitTime;
  late final Output<String> location;

  /// Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  late final Output<String> name;
  late final Output<String> project;

  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// The source engine details.
  late final Output<DatabaseEngineInfoResponse> source;

  /// The timestamp when the workspace resource was last updated.
  late final Output<String> updateTime;

  ConversionWorkspace(
    String name, {
    ConversionWorkspaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1:ConversionWorkspace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.conversionWorkspaceId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.destination = Output.createUnknown<DatabaseEngineInfoResponse>();
    this.displayName = Output.createUnknown<String>();
    this.globalSettings = Output.createUnknown<Map<String, String>>();
    this.hasUncommittedChanges = Output.createUnknown<bool>();
    this.latestCommitId = Output.createUnknown<String>();
    this.latestCommitTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.source = Output.createUnknown<DatabaseEngineInfoResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
