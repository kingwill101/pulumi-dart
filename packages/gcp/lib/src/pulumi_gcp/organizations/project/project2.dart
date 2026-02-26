import 'package:pulumi/pulumi.dart';
import 'project_args2.dart';

/// Allows creation and management of a Google Cloud Platform project.
///
/// Projects created with this resource must be associated with an Organization.
/// See the [Organization documentation](https://docs.cloud.google.com/resource-manager/docs/quickstarts) for more details.
///
/// The user or service account that is running this provider when creating a <span pulumi-lang-nodejs="`gcp.organizations.Project`" pulumi-lang-dotnet="`gcp.organizations.Project`" pulumi-lang-go="`organizations.Project`" pulumi-lang-python="`organizations.Project`" pulumi-lang-yaml="`gcp.organizations.Project`" pulumi-lang-java="`gcp.organizations.Project`">`gcp.organizations.Project`</span>
/// resource must have `roles/resourcemanager.projectCreator` on the specified organization. See the
/// [Access Control for Organizations Using IAM](https://docs.cloud.google.com/resource-manager/docs/access-control-org)
/// doc for more information.
///
/// > This resource reads the specified billing account on every pulumi up and plan operation so you must have permissions on the specified billing account.
///
/// > It is recommended to use the `constraints/compute.skipDefaultNetworkCreation` [constraint](https://www.terraform.io/docs/providers/google/r/google_organization_policy.html) to remove the default network instead of setting <span pulumi-lang-nodejs="`autoCreateNetwork`" pulumi-lang-dotnet="`AutoCreateNetwork`" pulumi-lang-go="`autoCreateNetwork`" pulumi-lang-python="`auto_create_network`" pulumi-lang-yaml="`autoCreateNetwork`" pulumi-lang-java="`autoCreateNetwork`">`auto_create_network`</span> to false, when possible.
///
/// > It may take a while for the attached tag bindings to be deleted after the project is scheduled to be deleted.
///
/// To get more information about projects, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects)
/// * How-to Guides
/// * [Creating and managing projects](https://docs.cloud.google.com/resource-manager/docs/creating-managing-projects)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.organizations.Project("my_project", {
/// name: "My Project",
/// projectId: "your-project-id",
/// orgId: "1234567",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.organizations.Project("my_project",
/// name="My Project",
/// project_id="your-project-id",
/// org_id="1234567")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myProject = new Gcp.Organizations.Project("my_project", new()
/// {
/// Name = "My Project",
/// ProjectId = "your-project-id",
/// OrgId = "1234567",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// Name:      pulumi.String("My Project"),
/// ProjectId: pulumi.String("your-project-id"),
/// OrgId:     pulumi.String("1234567"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myProject = new Project("myProject", ProjectArgs.builder()
/// .name("My Project")
/// .projectId("your-project-id")
/// .orgId("1234567")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myProject:
/// type: gcp:organizations:Project
/// name: my_project
/// properties:
/// name: My Project
/// projectId: your-project-id
/// orgId: '1234567'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To create a project under a specific folder
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const department1 = new gcp.organizations.Folder("department1", {
/// displayName: "Department 1",
/// parent: "organizations/1234567",
/// });
/// const myProject_in_a_folder = new gcp.organizations.Project("my_project-in-a-folder", {
/// name: "My Project",
/// projectId: "your-project-id",
/// folderId: department1.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// department1 = gcp.organizations.Folder("department1",
/// display_name="Department 1",
/// parent="organizations/1234567")
/// my_project_in_a_folder = gcp.organizations.Project("my_project-in-a-folder",
/// name="My Project",
/// project_id="your-project-id",
/// folder_id=department1.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var department1 = new Gcp.Organizations.Folder("department1", new()
/// {
/// DisplayName = "Department 1",
/// Parent = "organizations/1234567",
/// });
///
/// var myProject_in_a_folder = new Gcp.Organizations.Project("my_project-in-a-folder", new()
/// {
/// Name = "My Project",
/// ProjectId = "your-project-id",
/// FolderId = department1.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// department1, err := organizations.NewFolder(ctx, "department1", &organizations.FolderArgs{
/// DisplayName: pulumi.String("Department 1"),
/// Parent:      pulumi.String("organizations/1234567"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = organizations.NewProject(ctx, "my_project-in-a-folder", &organizations.ProjectArgs{
/// Name:      pulumi.String("My Project"),
/// ProjectId: pulumi.String("your-project-id"),
/// FolderId:  department1.Name,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var department1 = new Folder("department1", FolderArgs.builder()
/// .displayName("Department 1")
/// .parent("organizations/1234567")
/// .build());
///
/// var myProject_in_a_folder = new Project("myProject-in-a-folder", ProjectArgs.builder()
/// .name("My Project")
/// .projectId("your-project-id")
/// .folderId(department1.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myProject-in-a-folder:
/// type: gcp:organizations:Project
/// name: my_project-in-a-folder
/// properties:
/// name: My Project
/// projectId: your-project-id
/// folderId: ${department1.name}
/// department1:
/// type: gcp:organizations:Folder
/// properties:
/// displayName: Department 1
/// parent: organizations/1234567
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To create a project with a tag
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.organizations.Project("my_project", {
/// name: "My Project",
/// projectId: "your-project-id",
/// orgId: "1234567",
/// tags: {
/// "1234567/env": "staging",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.organizations.Project("my_project",
/// name="My Project",
/// project_id="your-project-id",
/// org_id="1234567",
/// tags={
/// "1234567/env": "staging",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myProject = new Gcp.Organizations.Project("my_project", new()
/// {
/// Name = "My Project",
/// ProjectId = "your-project-id",
/// OrgId = "1234567",
/// Tags =
/// {
/// { "1234567/env", "staging" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// Name:      pulumi.String("My Project"),
/// ProjectId: pulumi.String("your-project-id"),
/// OrgId:     pulumi.String("1234567"),
/// Tags: pulumi.StringMap{
/// "1234567/env": pulumi.String("staging"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myProject = new Project("myProject", ProjectArgs.builder()
/// .name("My Project")
/// .projectId("your-project-id")
/// .orgId("1234567")
/// .tags(Map.of("1234567/env", "staging"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myProject:
/// type: gcp:organizations:Project
/// name: my_project
/// properties:
/// name: My Project
/// projectId: your-project-id
/// orgId: '1234567'
/// tags:
/// 1234567/env: staging
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Projects can be imported using the `project_id`, e.g.
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, Projects can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/project:Project default {{project_id}}
/// ```
class Project2 extends CustomResource {
  /// Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set<span pulumi-lang-nodejs=" autoCreateNetwork " pulumi-lang-dotnet=" AutoCreateNetwork " pulumi-lang-go=" autoCreateNetwork " pulumi-lang-python=" auto_create_network " pulumi-lang-yaml=" autoCreateNetwork " pulumi-lang-java=" autoCreateNetwork "> auto_create_network </span>to false, since the network will exist momentarily.
  late final Output<bool?> autoCreateNetwork;

  /// The alphanumeric ID of the billing account this project
  /// belongs to. The user or service account performing this operation with the provider
  /// must have at mininum Billing Account User privileges (`roles/billing.user`) on the billing account.
  /// See [Google Cloud Billing API Access Control](https://cloud.google.com/billing/docs/how-to/billing-access)
  /// for more details.
  late final Output<String?> billingAccount;
  late final Output<String?> deletionPolicy;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The numeric ID of the folder this project should be
  /// created under. Only one of <span pulumi-lang-nodejs="`orgId`" pulumi-lang-dotnet="`OrgId`" pulumi-lang-go="`orgId`" pulumi-lang-python="`org_id`" pulumi-lang-yaml="`orgId`" pulumi-lang-java="`orgId`">`org_id`</span> or <span pulumi-lang-nodejs="`folderId`" pulumi-lang-dotnet="`FolderId`" pulumi-lang-go="`folderId`" pulumi-lang-python="`folder_id`" pulumi-lang-yaml="`folderId`" pulumi-lang-java="`folderId`">`folder_id`</span> may be
  /// specified. If the <span pulumi-lang-nodejs="`folderId`" pulumi-lang-dotnet="`FolderId`" pulumi-lang-go="`folderId`" pulumi-lang-python="`folder_id`" pulumi-lang-yaml="`folderId`" pulumi-lang-java="`folderId`">`folder_id`</span> is specified, then the project is
  /// created under the specified folder. Changing this forces the
  /// project to be migrated to the newly specified folder.
  late final Output<String?> folderId;

  /// A set of key/value label pairs to assign to the project.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The display name of the project.
  late final Output<String> name;

  /// The numeric identifier of the project.
  late final Output<String> number;

  /// The numeric ID of the organization this project belongs to.
  /// Changing this forces a new project to be created.  Only one of
  /// <span pulumi-lang-nodejs="`orgId`" pulumi-lang-dotnet="`OrgId`" pulumi-lang-go="`orgId`" pulumi-lang-python="`org_id`" pulumi-lang-yaml="`orgId`" pulumi-lang-java="`orgId`">`org_id`</span> or <span pulumi-lang-nodejs="`folderId`" pulumi-lang-dotnet="`FolderId`" pulumi-lang-go="`folderId`" pulumi-lang-python="`folder_id`" pulumi-lang-yaml="`folderId`" pulumi-lang-java="`folderId`">`folder_id`</span> may be specified. If the <span pulumi-lang-nodejs="`orgId`" pulumi-lang-dotnet="`OrgId`" pulumi-lang-go="`orgId`" pulumi-lang-python="`org_id`" pulumi-lang-yaml="`orgId`" pulumi-lang-java="`orgId`">`org_id`</span> is
  /// specified then the project is created at the top level. Changing
  /// this forces the project to be migrated to the newly specified
  /// organization.
  late final Output<String?> orgId;

  /// The project ID. Changing this forces a new project to be created.
  late final Output<String> projectId;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the <span pulumi-lang-nodejs="`gcp.tags.TagValue`" pulumi-lang-dotnet="`gcp.tags.TagValue`" pulumi-lang-go="`tags.TagValue`" pulumi-lang-python="`tags.TagValue`" pulumi-lang-yaml="`gcp.tags.TagValue`" pulumi-lang-java="`gcp.tags.TagValue`">`gcp.tags.TagValue`</span> resource.
  late final Output<Map<String, String>?> tags;

  Project2(
    String name, {
    ProjectArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCreateNetwork = Output.createUnknown<bool?>();
    this.billingAccount = Output.createUnknown<String?>();
    this.deletionPolicy = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.folderId = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.number = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String?>();
    this.projectId = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
  }
}
