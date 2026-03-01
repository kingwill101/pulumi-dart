import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_service_accounts_args.dart';

/// Allows management of Google Cloud Platform project default service accounts.
///
/// When certain service APIs are enabled, Google Cloud Platform automatically creates service accounts to help get started, but
/// this is not recommended for production environments as per [Google's documentation](https://cloud.google.com/iam/docs/service-accounts#default).
/// See the [Organization documentation](https://docs.cloud.google.com/resource-manager/docs/quickstarts) for more details.
///
/// > **WARNING** Some Google Cloud products do not work if the default service accounts are deleted so it is better to `DEPRIVILEGE` as
/// Google **CAN NOT** recover service accounts that have been deleted for more than 30 days.
/// Also Google recommends using the `constraints/iam.automaticIamGrantsForDefaultServiceAccounts` [constraint](https://www.terraform.io/docs/providers/google/r/google_organization_policy.html)
/// to disable automatic IAM Grants to default service accounts.
///
/// > This resource works on a best-effort basis, as no API formally describes the default service accounts
/// and it is for users who are unable to use constraints. If the default service accounts change their name
/// or additional service accounts are added, this resource will need to be updated.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.projects.DefaultServiceAccounts("my_project", {
///     project: "my-project-id",
///     action: "DELETE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.projects.DefaultServiceAccounts("my_project",
///     project="my-project-id",
///     action="DELETE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Projects.DefaultServiceAccounts("my_project", new()
///     {
///         Project = "my-project-id",
///         Action = "DELETE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewDefaultServiceAccounts(ctx, "my_project", &projects.DefaultServiceAccountsArgs{
/// 			Project: pulumi.String("my-project-id"),
/// 			Action:  pulumi.String("DELETE"),
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
/// import com.pulumi.gcp.projects.DefaultServiceAccounts;
/// import com.pulumi.gcp.projects.DefaultServiceAccountsArgs;
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
///         var myProject = new DefaultServiceAccounts("myProject", DefaultServiceAccountsArgs.builder()
///             .project("my-project-id")
///             .action("DELETE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myProject:
///     type: gcp:projects:DefaultServiceAccounts
///     name: my_project
///     properties:
///       project: my-project-id
///       action: DELETE
/// ```
///
///
/// To enable the default service accounts on the resource destroy:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.projects.DefaultServiceAccounts("my_project", {
///     project: "my-project-id",
///     action: "DISABLE",
///     restorePolicy: "REVERT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.projects.DefaultServiceAccounts("my_project",
///     project="my-project-id",
///     action="DISABLE",
///     restore_policy="REVERT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Projects.DefaultServiceAccounts("my_project", new()
///     {
///         Project = "my-project-id",
///         Action = "DISABLE",
///         RestorePolicy = "REVERT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewDefaultServiceAccounts(ctx, "my_project", &projects.DefaultServiceAccountsArgs{
/// 			Project:       pulumi.String("my-project-id"),
/// 			Action:        pulumi.String("DISABLE"),
/// 			RestorePolicy: pulumi.String("REVERT"),
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
/// import com.pulumi.gcp.projects.DefaultServiceAccounts;
/// import com.pulumi.gcp.projects.DefaultServiceAccountsArgs;
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
///         var myProject = new DefaultServiceAccounts("myProject", DefaultServiceAccountsArgs.builder()
///             .project("my-project-id")
///             .action("DISABLE")
///             .restorePolicy("REVERT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myProject:
///     type: gcp:projects:DefaultServiceAccounts
///     name: my_project
///     properties:
///       project: my-project-id
///       action: DISABLE
///       restorePolicy: REVERT
/// ```
///
///
/// ## Import
///
/// This resource does not support import
class DefaultServiceAccounts extends pulumi.CustomResource {
  /// The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  late final pulumi.Output<String> action;

  /// The project ID where service accounts are created.
  late final pulumi.Output<String> project;

  /// The action to be performed in the default service accounts on the resource destroy.
  /// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE.
  /// If set to REVERT it attempts to restore all default SAs but the DEPRIVILEGE action.
  /// If set to REVERT_AND_IGNORE_FAILURE it is the same behavior as REVERT but ignores errors returned by the API.
  late final pulumi.Output<String?> restorePolicy;

  /// The Service Accounts changed by this resource. It is used for `REVERT` the `action` on the destroy.
  late final pulumi.Output<Map<String, String>> serviceAccounts;

  /// Creates a new [DefaultServiceAccounts].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultServiceAccounts]. {@macro pulumi_projects_default_service_accounts_default_service_accounts_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultServiceAccounts(
    String name, {
    DefaultServiceAccountsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:projects/defaultServiceAccounts:DefaultServiceAccounts',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.action = registerOutput<String>('action');
    this.project = registerOutput<String>('project');
    this.restorePolicy = registerOutput<String?>('restorePolicy');
    this.serviceAccounts = registerOutput<Map<String, String>>(
      'serviceAccounts',
    );
  }
}
