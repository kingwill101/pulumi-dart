import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_service_account_args.dart';

/// > **Note:** You cannot update a service account. If you change any attribute, Terraform
/// will delete the current and create a new one.
///
/// Read about Service Accounts in the [Amazon Managed Grafana user guide](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html).
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.grafana.WorkspaceServiceAccount("example",
///     name="example-admin",
///     grafana_role="ADMIN",
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
/// 		_, err := grafana.NewWorkspaceServiceAccount(ctx, "example", &grafana.WorkspaceServiceAccountArgs{
/// 			Name:        pulumi.String("example-admin"),
/// 			GrafanaRole: pulumi.String("ADMIN"),
/// 			WorkspaceId: pulumi.Any(exampleAwsGrafanaWorkspace.Id),
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Managed Grafana Workspace Service Account using the `workspace_id` and `service_account_id` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspaceServiceAccount:WorkspaceServiceAccount example g-abc12345,1
/// ```
class WorkspaceServiceAccount extends pulumi.CustomResource {
  /// The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  late final pulumi.Output<String> grafanaRole;
  /// A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the service account in the given Grafana workspace
  late final pulumi.Output<String> serviceAccountId;
  /// The Grafana workspace with which the service account is associated.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceServiceAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceServiceAccount]. {@macro pulumi_grafana_workspace_service_account_workspace_service_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceServiceAccount(
    String name, {
    WorkspaceServiceAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceServiceAccount:WorkspaceServiceAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.grafanaRole = registerOutput<String>('grafanaRole');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
