import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_authorization_args.dart';

/// Authorize the Synchronizer to download environment data from the control plane.
///
///
/// To get more information about SyncAuthorization, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations#getsyncauthorization)
/// * How-to Guides
/// * [Enable Synchronizer access](https://cloud.google.com/apigee/docs/hybrid/v1.8/synchronizer-access#enable-synchronizer-access)
///
/// ## Example Usage
///
/// ### Apigee Sync Authorization Basic Test
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const apigee = new gcp.projects.Service("apigee", {
///     project: project.projectId,
///     service: "apigee.googleapis.com",
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: project.projectId,
///     runtimeType: "HYBRID",
/// }, {
///     dependsOn: [apigee],
/// });
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const synchronizer_iam = new gcp.projects.IAMMember("synchronizer-iam", {
///     project: project.projectId,
///     role: "roles/apigee.synchronizerManager",
///     member: pulumi.interpolate`serviceAccount:${serviceAccount.email}`,
/// });
/// const apigeeSyncAuthorization = new gcp.apigee.SyncAuthorization("apigee_sync_authorization", {
///     name: apigeeOrg.name,
///     identities: [pulumi.interpolate`serviceAccount:${serviceAccount.email}`],
/// }, {
///     dependsOn: [synchronizer_iam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// apigee = gcp.projects.Service("apigee",
///     project=project.project_id,
///     service="apigee.googleapis.com")
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=project.project_id,
///     runtime_type="HYBRID",
///     opts = pulumi.ResourceOptions(depends_on=[apigee]))
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="my-account",
///     display_name="Service Account")
/// synchronizer_iam = gcp.projects.IAMMember("synchronizer-iam",
///     project=project.project_id,
///     role="roles/apigee.synchronizerManager",
///     member=service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// apigee_sync_authorization = gcp.apigee.SyncAuthorization("apigee_sync_authorization",
///     name=apigee_org.name,
///     identities=[service_account.email.apply(lambda email: f"serviceAccount:{email}")],
///     opts = pulumi.ResourceOptions(depends_on=[synchronizer_iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var apigee = new Gcp.Projects.Service("apigee", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apigee.googleapis.com",
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = project.ProjectId,
///         RuntimeType = "HYBRID",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigee,
///         },
///     });
///
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Service Account",
///     });
///
///     var synchronizer_iam = new Gcp.Projects.IAMMember("synchronizer-iam", new()
///     {
///         Project = project.ProjectId,
///         Role = "roles/apigee.synchronizerManager",
///         Member = serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var apigeeSyncAuthorization = new Gcp.Apigee.SyncAuthorization("apigee_sync_authorization", new()
///     {
///         Name = apigeeOrg.Name,
///         Identities = new[]
///         {
///             serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             synchronizer_iam,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigee, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("apigee.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion: pulumi.String("us-central1"),
/// 			ProjectId:       project.ProjectId,
/// 			RuntimeType:     pulumi.String("HYBRID"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigee,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		synchronizer_iam, err := projects.NewIAMMember(ctx, "synchronizer-iam", &projects.IAMMemberArgs{
/// 			Project: project.ProjectId,
/// 			Role:    pulumi.String("roles/apigee.synchronizerManager"),
/// 			Member: serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewSyncAuthorization(ctx, "apigee_sync_authorization", &apigee.SyncAuthorizationArgs{
/// 			Name: apigeeOrg.Name,
/// 			Identities: pulumi.StringArray{
/// 				serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 					return fmt.Sprintf("serviceAccount:%v", email), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			synchronizer_iam,
/// 		}))
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.apigee.SyncAuthorization;
/// import com.pulumi.gcp.apigee.SyncAuthorizationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var apigee = new Service("apigee", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apigee.googleapis.com")
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(project.projectId())
///             .runtimeType("HYBRID")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigee)
///                 .build());
///
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Service Account")
///             .build());
///
///         var synchronizer_iam = new IAMMember("synchronizer-iam", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/apigee.synchronizerManager")
///             .member(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var apigeeSyncAuthorization = new SyncAuthorization("apigeeSyncAuthorization", SyncAuthorizationArgs.builder()
///             .name(apigeeOrg.name())
///             .identities(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(synchronizer_iam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   apigee:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: apigee.googleapis.com
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${project.projectId}
///       runtimeType: HYBRID
///     options:
///       dependsOn:
///         - ${apigee}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: my-account
///       displayName: Service Account
///   synchronizer-iam:
///     type: gcp:projects:IAMMember
///     properties:
///       project: ${project.projectId}
///       role: roles/apigee.synchronizerManager
///       member: serviceAccount:${serviceAccount.email}
///   apigeeSyncAuthorization:
///     type: gcp:apigee:SyncAuthorization
///     name: apigee_sync_authorization
///     properties:
///       name: ${apigeeOrg.name}
///       identities:
///         - serviceAccount:${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${["synchronizer-iam"]}
/// ```
///
///
/// ## Import
///
/// SyncAuthorization can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}/syncAuthorization`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SyncAuthorization can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/syncAuthorization:SyncAuthorization default organizations/{{name}}/syncAuthorization
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/syncAuthorization:SyncAuthorization default {{name}}
/// ```
class SyncAuthorization extends pulumi.CustomResource {
  /// Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous updates from overwriting each other.
  /// Used internally during updates.
  late final pulumi.Output<String> etag;

  /// Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  late final pulumi.Output<List<String>> identities;

  /// Name of the Apigee organization.
  late final pulumi.Output<String> name;

  /// Creates a new [SyncAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncAuthorization]. {@macro pulumi_apigee_sync_authorization_sync_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncAuthorization(
    String name, {
    SyncAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/syncAuthorization:SyncAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.identities = registerOutput<List<String>>('identities');
    this.name = registerOutput<String>('name');
  }
}
