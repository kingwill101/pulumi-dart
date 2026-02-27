import 'package:pulumi/pulumi.dart';
import 'workspace_api_key_args.dart';

/// Provides an Amazon Managed Grafana workspace API Key resource.
///
/// ## Example Usage
///
/// ### Basic configuration
class WorkspaceApiKey extends CustomResource {
  /// The key token in JSON format. Use this value as a bearer token to authenticate HTTP requests to the workspace.
  late final Output<String> key;

  /// Specifies the name of the API key. Key names must be unique to the workspace.
  late final Output<String> keyName;

  /// Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  late final Output<String> keyRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  late final Output<int> secondsToLive;

  /// The ID of the workspace that the API key is valid for.
  late final Output<String> workspaceId;

  WorkspaceApiKey(
    String name, {
    WorkspaceApiKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceApiKey:WorkspaceApiKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.keyName = registerOutput<String>('keyName');
    this.keyRole = registerOutput<String>('keyRole');
    this.region = registerOutput<String>('region');
    this.secondsToLive = registerOutput<int>('secondsToLive');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
