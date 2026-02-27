import 'package:pulumi/pulumi.dart';
import 'workspace_service_account_token_args.dart';

/// > **Note:** You cannot update a service account token. If you change any attribute, Terraform
/// will delete the current and create a new one.
///
/// Read about Service Accounts Tokens in the [Amazon Managed Grafana user guide](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html#service-account-tokens).
///
/// ## Example Usage
///
/// ### Basic Usage
class WorkspaceServiceAccountToken extends CustomResource {
  /// Specifies when the service account token was created.
  late final Output<String> createdAt;

  /// Specifies when the service account token will expire.
  late final Output<String> expiresAt;

  /// The key for the service account token. Used when making calls to the Grafana HTTP APIs to authenticate and authorize the requests.
  late final Output<String> key;

  /// A name for the token to create. The name must be unique within the workspace.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  late final Output<int> secondsToLive;

  /// The ID of the service account for which to create a token.
  late final Output<String> serviceAccountId;

  /// Identifier of the service account token in the given Grafana workspace.
  late final Output<String> serviceAccountTokenId;

  /// The Grafana workspace with which the service account token is associated.
  late final Output<String> workspaceId;

  WorkspaceServiceAccountToken(
    String name, {
    WorkspaceServiceAccountTokenArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceServiceAccountToken:WorkspaceServiceAccountToken',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.expiresAt = registerOutput<String>('expiresAt');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.secondsToLive = registerOutput<int>('secondsToLive');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.serviceAccountTokenId =
        registerOutput<String>('serviceAccountTokenId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
