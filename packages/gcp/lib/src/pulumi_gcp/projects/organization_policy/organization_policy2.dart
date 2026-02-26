import 'package:pulumi/pulumi.dart';
import '../organization_policy_boolean_policy/organization_policy_boolean_policy2.dart';
import '../organization_policy_list_policy/organization_policy_list_policy2.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy2.dart';
import 'organization_policy_args2.dart';

/// Allows management of Organization Policies for a Google Cloud Project.
///
/// > **Warning:** This resource has been superseded by <span pulumi-lang-nodejs="`gcp.orgpolicy.Policy`" pulumi-lang-dotnet="`gcp.orgpolicy.Policy`" pulumi-lang-go="`orgpolicy.Policy`" pulumi-lang-python="`orgpolicy.Policy`" pulumi-lang-yaml="`gcp.orgpolicy.Policy`" pulumi-lang-java="`gcp.orgpolicy.Policy`">`gcp.orgpolicy.Policy`</span>. <span pulumi-lang-nodejs="`gcp.orgpolicy.Policy`" pulumi-lang-dotnet="`gcp.orgpolicy.Policy`" pulumi-lang-go="`orgpolicy.Policy`" pulumi-lang-python="`orgpolicy.Policy`" pulumi-lang-yaml="`gcp.orgpolicy.Policy`" pulumi-lang-java="`gcp.orgpolicy.Policy`">`gcp.orgpolicy.Policy`</span> uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setOrgPolicy)
/// * How-to Guides
/// * [Introduction to the Organization Policy Service](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
/// To set policy with a [boolean constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-boolean-constraints):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serialPortPolicy = new gcp.projects.OrganizationPolicy("serial_port_policy", {
/// project: "your-project-id",
/// constraint: "compute.disableSerialPortAccess",
/// booleanPolicy: {
/// enforced: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// serial_port_policy = gcp.projects.OrganizationPolicy("serial_port_policy",
/// project="your-project-id",
/// constraint="compute.disableSerialPortAccess",
/// boolean_policy={
/// "enforced": True,
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
/// var serialPortPolicy = new Gcp.Projects.OrganizationPolicy("serial_port_policy", new()
/// {
/// Project = "your-project-id",
/// Constraint = "compute.disableSerialPortAccess",
/// BooleanPolicy = new Gcp.Projects.Inputs.OrganizationPolicyBooleanPolicyArgs
/// {
/// Enforced = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.NewOrganizationPolicy(ctx, "serial_port_policy", &projects.OrganizationPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// Constraint: pulumi.String("compute.disableSerialPortAccess"),
/// BooleanPolicy: &projects.OrganizationPolicyBooleanPolicyArgs{
/// Enforced: pulumi.Bool(true),
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
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyBooleanPolicyArgs;
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
/// var serialPortPolicy = new OrganizationPolicy("serialPortPolicy", OrganizationPolicyArgs.builder()
/// .project("your-project-id")
/// .constraint("compute.disableSerialPortAccess")
/// .booleanPolicy(OrganizationPolicyBooleanPolicyArgs.builder()
/// .enforced(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serialPortPolicy:
/// type: gcp:projects:OrganizationPolicy
/// name: serial_port_policy
/// properties:
/// project: your-project-id
/// constraint: compute.disableSerialPortAccess
/// booleanPolicy:
/// enforced: true
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// To set a policy with a [list constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-list-constraints):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.projects.OrganizationPolicy("services_policy", {
/// project: "your-project-id",
/// constraint: "serviceuser.services",
/// listPolicy: {
/// allow: {
/// all: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.projects.OrganizationPolicy("services_policy",
/// project="your-project-id",
/// constraint="serviceuser.services",
/// list_policy={
/// "allow": {
/// "all": True,
/// },
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
/// var servicesPolicy = new Gcp.Projects.OrganizationPolicy("services_policy", new()
/// {
/// Project = "your-project-id",
/// Constraint = "serviceuser.services",
/// ListPolicy = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyArgs
/// {
/// Allow = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyAllowArgs
/// {
/// All = true,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.NewOrganizationPolicy(ctx, "services_policy", &projects.OrganizationPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// Constraint: pulumi.String("serviceuser.services"),
/// ListPolicy: &projects.OrganizationPolicyListPolicyArgs{
/// Allow: &projects.OrganizationPolicyListPolicyAllowArgs{
/// All: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyAllowArgs;
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
/// var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
/// .project("your-project-id")
/// .constraint("serviceuser.services")
/// .listPolicy(OrganizationPolicyListPolicyArgs.builder()
/// .allow(OrganizationPolicyListPolicyAllowArgs.builder()
/// .all(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// servicesPolicy:
/// type: gcp:projects:OrganizationPolicy
/// name: services_policy
/// properties:
/// project: your-project-id
/// constraint: serviceuser.services
/// listPolicy:
/// allow:
/// all: true
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// Or to deny some services, use the following instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.projects.OrganizationPolicy("services_policy", {
/// project: "your-project-id",
/// constraint: "serviceuser.services",
/// listPolicy: {
/// suggestedValue: "compute.googleapis.com",
/// deny: {
/// values: ["cloudresourcemanager.googleapis.com"],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.projects.OrganizationPolicy("services_policy",
/// project="your-project-id",
/// constraint="serviceuser.services",
/// list_policy={
/// "suggested_value": "compute.googleapis.com",
/// "deny": {
/// "values": ["cloudresourcemanager.googleapis.com"],
/// },
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
/// var servicesPolicy = new Gcp.Projects.OrganizationPolicy("services_policy", new()
/// {
/// Project = "your-project-id",
/// Constraint = "serviceuser.services",
/// ListPolicy = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyArgs
/// {
/// SuggestedValue = "compute.googleapis.com",
/// Deny = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyDenyArgs
/// {
/// Values = new[]
/// {
/// "cloudresourcemanager.googleapis.com",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.NewOrganizationPolicy(ctx, "services_policy", &projects.OrganizationPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// Constraint: pulumi.String("serviceuser.services"),
/// ListPolicy: &projects.OrganizationPolicyListPolicyArgs{
/// SuggestedValue: pulumi.String("compute.googleapis.com"),
/// Deny: &projects.OrganizationPolicyListPolicyDenyArgs{
/// Values: pulumi.StringArray{
/// pulumi.String("cloudresourcemanager.googleapis.com"),
/// },
/// },
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
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyDenyArgs;
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
/// var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
/// .project("your-project-id")
/// .constraint("serviceuser.services")
/// .listPolicy(OrganizationPolicyListPolicyArgs.builder()
/// .suggestedValue("compute.googleapis.com")
/// .deny(OrganizationPolicyListPolicyDenyArgs.builder()
/// .values("cloudresourcemanager.googleapis.com")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// servicesPolicy:
/// type: gcp:projects:OrganizationPolicy
/// name: services_policy
/// properties:
/// project: your-project-id
/// constraint: serviceuser.services
/// listPolicy:
/// suggestedValue: compute.googleapis.com
/// deny:
/// values:
/// - cloudresourcemanager.googleapis.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To restore the default project organization policy, use the following instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.projects.OrganizationPolicy("services_policy", {
/// project: "your-project-id",
/// constraint: "serviceuser.services",
/// restorePolicy: {
/// "default": true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.projects.OrganizationPolicy("services_policy",
/// project="your-project-id",
/// constraint="serviceuser.services",
/// restore_policy={
/// "default": True,
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
/// var servicesPolicy = new Gcp.Projects.OrganizationPolicy("services_policy", new()
/// {
/// Project = "your-project-id",
/// Constraint = "serviceuser.services",
/// RestorePolicy = new Gcp.Projects.Inputs.OrganizationPolicyRestorePolicyArgs
/// {
/// Default = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.NewOrganizationPolicy(ctx, "services_policy", &projects.OrganizationPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// Constraint: pulumi.String("serviceuser.services"),
/// RestorePolicy: &projects.OrganizationPolicyRestorePolicyArgs{
/// Default: pulumi.Bool(true),
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
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyRestorePolicyArgs;
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
/// var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
/// .project("your-project-id")
/// .constraint("serviceuser.services")
/// .restorePolicy(OrganizationPolicyRestorePolicyArgs.builder()
/// .default_(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// servicesPolicy:
/// type: gcp:projects:OrganizationPolicy
/// name: services_policy
/// properties:
/// project: your-project-id
/// constraint: serviceuser.services
/// restorePolicy:
/// default: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Project organization policies can be imported using any of the follow formats:
///
/// * `projects/{{project_id}}:constraints/{{constraint}}`
///
/// * `{{project_id}}:constraints/{{constraint}}`
///
/// * `{{project_id}}:{{constraint}}`
///
/// When using the `pulumi import` command, project organization policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default projects/{{project_id}}:constraints/{{constraint}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default {{project_id}}:constraints/{{constraint}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default {{project_id}}:{{constraint}}
/// ```
class OrganizationPolicy2 extends CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  late final Output<OrganizationPolicyBooleanPolicy2?> booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final Output<String> constraint;

  /// (Computed) The etag of the organization policy. <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final Output<String> etag;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  late final Output<OrganizationPolicyListPolicy2?> listPolicy;

  /// The project id of the project to set the policy for.
  late final Output<String> project;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [<span pulumi-lang-nodejs="`booleanPolicy`" pulumi-lang-dotnet="`BooleanPolicy`" pulumi-lang-go="`booleanPolicy`" pulumi-lang-python="`boolean_policy`" pulumi-lang-yaml="`booleanPolicy`" pulumi-lang-java="`booleanPolicy`">`boolean_policy`</span>, <span pulumi-lang-nodejs="`listPolicy`" pulumi-lang-dotnet="`ListPolicy`" pulumi-lang-go="`listPolicy`" pulumi-lang-python="`list_policy`" pulumi-lang-yaml="`listPolicy`" pulumi-lang-java="`listPolicy`">`list_policy`</span>, <span pulumi-lang-nodejs="`restorePolicy`" pulumi-lang-dotnet="`RestorePolicy`" pulumi-lang-go="`restorePolicy`" pulumi-lang-python="`restore_policy`" pulumi-lang-yaml="`restorePolicy`" pulumi-lang-java="`restorePolicy`">`restore_policy`</span>] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  late final Output<OrganizationPolicyRestorePolicy2?> restorePolicy;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final Output<String> updateTime;

  /// Version of the Policy. Default version is 0.
  late final Output<int> version;

  OrganizationPolicy2(
    String name, {
    OrganizationPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/organizationPolicy:OrganizationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.booleanPolicy =
        registerOutput<OrganizationPolicyBooleanPolicy2?>('booleanPolicy');
    this.constraint = registerOutput<String>('constraint');
    this.etag = registerOutput<String>('etag');
    this.listPolicy =
        registerOutput<OrganizationPolicyListPolicy2?>('listPolicy');
    this.project = registerOutput<String>('project');
    this.restorePolicy =
        registerOutput<OrganizationPolicyRestorePolicy2?>('restorePolicy');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
