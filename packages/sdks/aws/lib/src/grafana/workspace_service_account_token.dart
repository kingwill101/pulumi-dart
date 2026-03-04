import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_service_account_token_args.dart';
import 'workspace_service_account_token_state.dart';

/// &gt; **Note:** You cannot update a service account token. If you change any attribute, Terraform
/// will delete the current and create a new one.
///
/// Read about Service Accounts Tokens in the [Amazon Managed Grafana user guide](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html#service-account-tokens).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.grafana.WorkspaceServiceAccount("example", {
///     name: "example-admin",
///     grafanaRole: "ADMIN",
///     workspaceId: exampleAwsGrafanaWorkspace.id,
/// });
/// const exampleWorkspaceServiceAccountToken = new aws.grafana.WorkspaceServiceAccountToken("example", {
///     name: "example-key",
///     serviceAccountId: example.serviceAccountId,
///     secondsToLive: 3600,
///     workspaceId: exampleAwsGrafanaWorkspace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.grafana.WorkspaceServiceAccount("example",
///     name="example-admin",
///     grafana_role="ADMIN",
///     workspace_id=example_aws_grafana_workspace["id"])
/// example_workspace_service_account_token = aws.grafana.WorkspaceServiceAccountToken("example",
///     name="example-key",
///     service_account_id=example.service_account_id,
///     seconds_to_live=3600,
///     workspace_id=example_aws_grafana_workspace["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Grafana.WorkspaceServiceAccount("example", new()
///     {
///         Name = "example-admin",
///         GrafanaRole = "ADMIN",
///         WorkspaceId = exampleAwsGrafanaWorkspace.Id,
///     });
///
///     var exampleWorkspaceServiceAccountToken = new Aws.Grafana.WorkspaceServiceAccountToken("example", new()
///     {
///         Name = "example-key",
///         ServiceAccountId = example.ServiceAccountId,
///         SecondsToLive = 3600,
///         WorkspaceId = exampleAwsGrafanaWorkspace.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/grafana"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := grafana.NewWorkspaceServiceAccount(ctx, "example", &grafana.WorkspaceServiceAccountArgs{
/// 			Name:        pulumi.String("example-admin"),
/// 			GrafanaRole: pulumi.String("ADMIN"),
/// 			WorkspaceId: pulumi.Any(exampleAwsGrafanaWorkspace.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = grafana.NewWorkspaceServiceAccountToken(ctx, "example", &grafana.WorkspaceServiceAccountTokenArgs{
/// 			Name:             pulumi.String("example-key"),
/// 			ServiceAccountId: example.ServiceAccountId,
/// 			SecondsToLive:    pulumi.Int(3600),
/// 			WorkspaceId:      pulumi.Any(exampleAwsGrafanaWorkspace.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.grafana.WorkspaceServiceAccount;
/// import com.pulumi.aws.grafana.WorkspaceServiceAccountArgs;
/// import com.pulumi.aws.grafana.WorkspaceServiceAccountToken;
/// import com.pulumi.aws.grafana.WorkspaceServiceAccountTokenArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new WorkspaceServiceAccount("example", WorkspaceServiceAccountArgs.builder()
///             .name("example-admin")
///             .grafanaRole("ADMIN")
///             .workspaceId(exampleAwsGrafanaWorkspace.id())
///             .build());
///
///         var exampleWorkspaceServiceAccountToken = new WorkspaceServiceAccountToken("exampleWorkspaceServiceAccountToken", WorkspaceServiceAccountTokenArgs.builder()
///             .name("example-key")
///             .serviceAccountId(example.serviceAccountId())
///             .secondsToLive(3600)
///             .workspaceId(exampleAwsGrafanaWorkspace.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:grafana:WorkspaceServiceAccount
///     properties:
///       name: example-admin
///       grafanaRole: ADMIN
///       workspaceId: ${exampleAwsGrafanaWorkspace.id}
///   exampleWorkspaceServiceAccountToken:
///     type: aws:grafana:WorkspaceServiceAccountToken
///     name: example
///     properties:
///       name: example-key
///       serviceAccountId: ${example.serviceAccountId}
///       secondsToLive: 3600
///       workspaceId: ${exampleAwsGrafanaWorkspace.id}
/// ```
class WorkspaceServiceAccountToken extends pulumi.CustomResource {
  /// Specifies when the service account token was created.
  late final pulumi.Output<String> createdAt;

  /// Specifies when the service account token will expire.
  late final pulumi.Output<String> expiresAt;

  /// The key for the service account token. Used when making calls to the Grafana HTTP APIs to authenticate and authorize the requests.
  late final pulumi.Output<String> key;

  /// A name for the token to create. The name must be unique within the workspace.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  late final pulumi.Output<int> secondsToLive;

  /// The ID of the service account for which to create a token.
  late final pulumi.Output<String> serviceAccountId;

  /// Identifier of the service account token in the given Grafana workspace.
  late final pulumi.Output<String> serviceAccountTokenId;

  /// The Grafana workspace with which the service account token is associated.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceServiceAccountToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceServiceAccountToken]. {@macro pulumi_grafana_workspace_service_account_token_workspace_service_account_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceServiceAccountToken(
    String name, {
    WorkspaceServiceAccountTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:grafana/workspaceServiceAccountToken:WorkspaceServiceAccountToken',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    expiresAt = registerOutput<String>('expiresAt');
    key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secondsToLive = registerOutput<int>('secondsToLive');
    serviceAccountId = registerOutput<String>('serviceAccountId');
    serviceAccountTokenId = registerOutput<String>('serviceAccountTokenId');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceServiceAccountToken] resource's state with the given [name] and [id].
  static WorkspaceServiceAccountToken get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceServiceAccountTokenState? state,
  }) {
    return WorkspaceServiceAccountToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceServiceAccountToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:grafana/workspaceServiceAccountToken:WorkspaceServiceAccountToken',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    expiresAt = registerOutput<String>('expiresAt');
    key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secondsToLive = registerOutput<int>('secondsToLive');
    serviceAccountId = registerOutput<String>('serviceAccountId');
    serviceAccountTokenId = registerOutput<String>('serviceAccountTokenId');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
