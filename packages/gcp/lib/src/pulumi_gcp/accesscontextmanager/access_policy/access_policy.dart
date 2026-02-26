import 'package:pulumi/pulumi.dart';
import 'access_policy_args.dart';

/// AccessPolicy is a container for AccessLevels (which define the necessary
/// attributes to use GCP services) and ServicePerimeters (which define
/// regions of services able to freely pass data within a perimeter). An
/// access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
///
///
/// To get more information about AccessPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies)
/// * How-to Guides
/// * [Access Policy Quickstart](https://cloud.google.com/access-context-manager/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> and set <span pulumi-lang-nodejs="`userProjectOverride`" pulumi-lang-dotnet="`UserProjectOverride`" pulumi-lang-go="`userProjectOverride`" pulumi-lang-python="`user_project_override`" pulumi-lang-yaml="`userProjectOverride`" pulumi-lang-java="`userProjectOverride`">`user_project_override`</span> to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Access Policy Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "Org Access Policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="Org Access Policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "Org Access Policy",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("Org Access Policy"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
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
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("Org Access Policy")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: Org Access Policy
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Access Context Manager Access Policy Scoped
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "my-project-name",
/// name: "my-project-name",
/// orgId: "123456789",
/// deletionPolicy: "DELETE",
/// });
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "Scoped Access Policy",
/// scopes: pulumi.interpolate`projects/${project.number}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
/// project_id="my-project-name",
/// name="my-project-name",
/// org_id="123456789",
/// deletion_policy="DELETE")
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="Scoped Access Policy",
/// scopes=project.number.apply(lambda number: f"projects/{number}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "my-project-name",
/// Name = "my-project-name",
/// OrgId = "123456789",
/// DeletionPolicy = "DELETE",
/// });
///
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "Scoped Access Policy",
/// Scopes = project.Number.Apply(number => $"projects/{number}"),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("my-project-name"),
/// Name:           pulumi.String("my-project-name"),
/// OrgId:          pulumi.String("123456789"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("Scoped Access Policy"),
/// Scopes: project.Number.ApplyT(func(number string) (string, error) {
/// return fmt.Sprintf("projects/%v", number), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
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
/// var project = new Project("project", ProjectArgs.builder()
/// .projectId("my-project-name")
/// .name("my-project-name")
/// .orgId("123456789")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("Scoped Access Policy")
/// .scopes(project.number().applyValue(_number -> String.format("projects/%s", _number)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:organizations:Project
/// properties:
/// projectId: my-project-name
/// name: my-project-name
/// orgId: '123456789'
/// deletionPolicy: DELETE
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: Scoped Access Policy
/// scopes: projects/${project.number}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// AccessPolicy can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessPolicy:AccessPolicy default {{name}}
/// ```
class AccessPolicy extends CustomResource {
  /// Time the AccessPolicy was created in UTC.
  late final Output<String> createTime;

  /// Resource name of the AccessPolicy. Format: '{{policy_id}}'
  late final Output<String> name;

  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  late final Output<String> parent;

  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  late final Output<String?> scopes;

  /// Human readable title. Does not affect behavior.
  late final Output<String> title;

  /// Time the AccessPolicy was updated in UTC.
  late final Output<String> updateTime;

  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessPolicy:AccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.scopes = registerOutput<String?>('scopes');
    this.title = registerOutput<String>('title');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
