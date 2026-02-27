import 'package:pulumi/pulumi.dart' hide Config;
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
    this.conversionWorkspaceId =
        registerOutput<String>('conversionWorkspaceId');
    this.createTime = registerOutput<String>('createTime');
    this.destination =
        registerOutput<DatabaseEngineInfoResponse>('destination');
    this.displayName = registerOutput<String>('displayName');
    this.globalSettings = registerOutput<Map<String, String>>('globalSettings');
    this.hasUncommittedChanges = registerOutput<bool>('hasUncommittedChanges');
    this.latestCommitId = registerOutput<String>('latestCommitId');
    this.latestCommitTime = registerOutput<String>('latestCommitTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.source = registerOutput<DatabaseEngineInfoResponse>('source');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
