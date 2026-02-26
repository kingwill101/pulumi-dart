import 'package:pulumi/pulumi.dart';
import '../iambinding_condition/iambinding_condition3.dart';
import 'iambinding_args3.dart';

/// Four different resources help you manage your IAM policy for a project. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span>: Authoritative. Sets the IAM policy for the project and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.projects.IAMBinding`" pulumi-lang-dotnet="`gcp.projects.IAMBinding`" pulumi-lang-go="`projects.IAMBinding`" pulumi-lang-python="`projects.IAMBinding`" pulumi-lang-yaml="`gcp.projects.IAMBinding`" pulumi-lang-java="`gcp.projects.IAMBinding`">`gcp.projects.IAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the project are preserved.
/// * <span pulumi-lang-nodejs="`gcp.projects.IAMMember`" pulumi-lang-dotnet="`gcp.projects.IAMMember`" pulumi-lang-go="`projects.IAMMember`" pulumi-lang-python="`projects.IAMMember`" pulumi-lang-yaml="`gcp.projects.IAMMember`" pulumi-lang-java="`gcp.projects.IAMMember`">`gcp.projects.IAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the project are preserved.
/// * <span pulumi-lang-nodejs="`gcp.projects.IAMAuditConfig`" pulumi-lang-dotnet="`gcp.projects.IAMAuditConfig`" pulumi-lang-go="`projects.IAMAuditConfig`" pulumi-lang-python="`projects.IAMAuditConfig`" pulumi-lang-yaml="`gcp.projects.IAMAuditConfig`" pulumi-lang-java="`gcp.projects.IAMAuditConfig`">`gcp.projects.IAMAuditConfig`</span>: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.projects.IAMBinding`" pulumi-lang-dotnet="`gcp.projects.IAMBinding`" pulumi-lang-go="`projects.IAMBinding`" pulumi-lang-python="`projects.IAMBinding`" pulumi-lang-yaml="`gcp.projects.IAMBinding`" pulumi-lang-java="`gcp.projects.IAMBinding`">`gcp.projects.IAMBinding`</span>, <span pulumi-lang-nodejs="`gcp.projects.IAMMember`" pulumi-lang-dotnet="`gcp.projects.IAMMember`" pulumi-lang-go="`projects.IAMMember`" pulumi-lang-python="`projects.IAMMember`" pulumi-lang-yaml="`gcp.projects.IAMMember`" pulumi-lang-java="`gcp.projects.IAMMember`">`gcp.projects.IAMMember`</span>, or <span pulumi-lang-nodejs="`gcp.projects.IAMAuditConfig`" pulumi-lang-dotnet="`gcp.projects.IAMAuditConfig`" pulumi-lang-go="`projects.IAMAuditConfig`" pulumi-lang-python="`projects.IAMAuditConfig`" pulumi-lang-yaml="`gcp.projects.IAMAuditConfig`" pulumi-lang-java="`gcp.projects.IAMAuditConfig`">`gcp.projects.IAMAuditConfig`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.projects.IAMBinding`" pulumi-lang-dotnet="`gcp.projects.IAMBinding`" pulumi-lang-go="`projects.IAMBinding`" pulumi-lang-python="`projects.IAMBinding`" pulumi-lang-yaml="`gcp.projects.IAMBinding`" pulumi-lang-java="`gcp.projects.IAMBinding`">`gcp.projects.IAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.projects.IAMMember`" pulumi-lang-dotnet="`gcp.projects.IAMMember`" pulumi-lang-go="`projects.IAMMember`" pulumi-lang-python="`projects.IAMMember`" pulumi-lang-yaml="`gcp.projects.IAMMember`" pulumi-lang-java="`gcp.projects.IAMMember`">`gcp.projects.IAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:** The underlying API method `projects.setIamPolicy` has a lot of constraints which are documented [here](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy). In addition to these constraints,
/// IAM Conditions cannot be used with Basic Roles such as Owner. Violating these constraints will result in the API returning 400 error code so please review these if you encounter errors with this resource.
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMPolicy
/// " pulumi-lang-dotnet=" gcp.projects.IAMPolicy
/// " pulumi-lang-go=" projects.IAMPolicy
/// " pulumi-lang-python=" projects.IAMPolicy
/// " pulumi-lang-yaml=" gcp.projects.IAMPolicy
/// " pulumi-lang-java=" gcp.projects.IAMPolicy
/// "> gcp.projects.IAMPolicy
/// </span>
/// !> **Be careful!** You can accidentally lock yourself out of your project
/// using this resource. Deleting a <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> removes access
/// from anyone without organization-level access to the project. Proceed with caution.
/// It's not recommended to use <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> with your provider project
/// to avoid locking yourself out, and it should generally only be used with projects
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const project = new gcp.projects.IAMPolicy("project", {
/// project: "your-project-id",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// project = gcp.projects.IAMPolicy("project",
/// project="your-project-id",
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var project = new Gcp.Projects.IAMPolicy("project", new()
/// {
/// Project = "your-project-id",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewIAMPolicy(ctx, "project", &projects.IAMPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.projects.IAMPolicy;
/// import com.pulumi.gcp.projects.IAMPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var project = new IAMPolicy("project", IAMPolicyArgs.builder()
/// .project("your-project-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMPolicy
/// properties:
/// project: your-project-id
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const project = new gcp.projects.IAMPolicy("project", {
/// project: "your-project-id",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.admin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// project = gcp.projects.IAMPolicy("project",
/// project="your-project-id",
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var project = new Gcp.Projects.IAMPolicy("project", new()
/// {
/// Project = "your-project-id",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/compute.admin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewIAMPolicy(ctx, "project", &projects.IAMPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.projects.IAMPolicy;
/// import com.pulumi.gcp.projects.IAMPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var project = new IAMPolicy("project", IAMPolicyArgs.builder()
/// .project("your-project-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMPolicy
/// properties:
/// project: your-project-id
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMBinding
/// " pulumi-lang-dotnet=" gcp.projects.IAMBinding
/// " pulumi-lang-go=" projects.IAMBinding
/// " pulumi-lang-python=" projects.IAMBinding
/// " pulumi-lang-yaml=" gcp.projects.IAMBinding
/// " pulumi-lang-java=" gcp.projects.IAMBinding
/// "> gcp.projects.IAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMBinding("project", {
/// project: "your-project-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMBinding("project",
/// project="your-project-id",
/// role="roles/editor",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.IAMBinding("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
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
/// _, err := projects.NewIAMBinding(ctx, "project", &projects.IAMBindingArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/editor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
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
/// var project = new IAMBinding("project", IAMBindingArgs.builder()
/// .project("your-project-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMBinding
/// properties:
/// project: your-project-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMBinding("project", {
/// project: "your-project-id",
/// role: "roles/container.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMBinding("project",
/// project="your-project-id",
/// role="roles/container.admin",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// var project = new Gcp.Projects.IAMBinding("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/container.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Projects.Inputs.IAMBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// _, err := projects.NewIAMBinding(ctx, "project", &projects.IAMBindingArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/container.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &projects.IAMBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
/// import com.pulumi.gcp.projects.inputs.IAMBindingConditionArgs;
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
/// var project = new IAMBinding("project", IAMBindingArgs.builder()
/// .project("your-project-id")
/// .role("roles/container.admin")
/// .members("user:jane@example.com")
/// .condition(IAMBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMBinding
/// properties:
/// project: your-project-id
/// role: roles/container.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMMember
/// " pulumi-lang-dotnet=" gcp.projects.IAMMember
/// " pulumi-lang-go=" projects.IAMMember
/// " pulumi-lang-python=" projects.IAMMember
/// " pulumi-lang-yaml=" gcp.projects.IAMMember
/// " pulumi-lang-java=" gcp.projects.IAMMember
/// "> gcp.projects.IAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMMember("project", {
/// project: "your-project-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMMember("project",
/// project="your-project-id",
/// role="roles/editor",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.IAMMember("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
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
/// _, err := projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/editor"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
/// var project = new IAMMember("project", IAMMemberArgs.builder()
/// .project("your-project-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMMember
/// properties:
/// project: your-project-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMMember("project", {
/// project: "your-project-id",
/// role: "roles/firebase.admin",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMMember("project",
/// project="your-project-id",
/// role="roles/firebase.admin",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// var project = new Gcp.Projects.IAMMember("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/firebase.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Projects.Inputs.IAMMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// _, err := projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/firebase.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &projects.IAMMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.projects.inputs.IAMMemberConditionArgs;
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
/// var project = new IAMMember("project", IAMMemberArgs.builder()
/// .project("your-project-id")
/// .role("roles/firebase.admin")
/// .member("user:jane@example.com")
/// .condition(IAMMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMMember
/// properties:
/// project: your-project-id
/// role: roles/firebase.admin
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMAuditConfig
/// " pulumi-lang-dotnet=" gcp.projects.IAMAuditConfig
/// " pulumi-lang-go=" projects.IAMAuditConfig
/// " pulumi-lang-python=" projects.IAMAuditConfig
/// " pulumi-lang-yaml=" gcp.projects.IAMAuditConfig
/// " pulumi-lang-java=" gcp.projects.IAMAuditConfig
/// "> gcp.projects.IAMAuditConfig
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMAuditConfig("project", {
/// project: "your-project-id",
/// service: "allServices",
/// auditLogConfigs: [
/// {
/// logType: "ADMIN_READ",
/// },
/// {
/// logType: "DATA_READ",
/// exemptedMembers: ["user:joebloggs@example.com"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMAuditConfig("project",
/// project="your-project-id",
/// service="allServices",
/// audit_log_configs=[
/// {
/// "log_type": "ADMIN_READ",
/// },
/// {
/// "log_type": "DATA_READ",
/// "exempted_members": ["user:joebloggs@example.com"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.IAMAuditConfig("project", new()
/// {
/// Project = "your-project-id",
/// Service = "allServices",
/// AuditLogConfigs = new[]
/// {
/// new Gcp.Projects.Inputs.IAMAuditConfigAuditLogConfigArgs
/// {
/// LogType = "ADMIN_READ",
/// },
/// new Gcp.Projects.Inputs.IAMAuditConfigAuditLogConfigArgs
/// {
/// LogType = "DATA_READ",
/// ExemptedMembers = new[]
/// {
/// "user:joebloggs@example.com",
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
/// _, err := projects.NewIAMAuditConfig(ctx, "project", &projects.IAMAuditConfigArgs{
/// Project: pulumi.String("your-project-id"),
/// Service: pulumi.String("allServices"),
/// AuditLogConfigs: projects.IAMAuditConfigAuditLogConfigArray{
/// &projects.IAMAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("ADMIN_READ"),
/// },
/// &projects.IAMAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("DATA_READ"),
/// ExemptedMembers: pulumi.StringArray{
/// pulumi.String("user:joebloggs@example.com"),
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
/// import com.pulumi.gcp.projects.IAMAuditConfig;
/// import com.pulumi.gcp.projects.IAMAuditConfigArgs;
/// import com.pulumi.gcp.projects.inputs.IAMAuditConfigAuditLogConfigArgs;
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
/// var project = new IAMAuditConfig("project", IAMAuditConfigArgs.builder()
/// .project("your-project-id")
/// .service("allServices")
/// .auditLogConfigs(
/// IAMAuditConfigAuditLogConfigArgs.builder()
/// .logType("ADMIN_READ")
/// .build(),
/// IAMAuditConfigAuditLogConfigArgs.builder()
/// .logType("DATA_READ")
/// .exemptedMembers("user:joebloggs@example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMAuditConfig
/// properties:
/// project: your-project-id
/// service: allServices
/// auditLogConfigs:
/// - logType: ADMIN_READ
/// - logType: DATA_READ
/// exemptedMembers:
/// - user:joebloggs@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMPolicy
/// " pulumi-lang-dotnet=" gcp.projects.IAMPolicy
/// " pulumi-lang-go=" projects.IAMPolicy
/// " pulumi-lang-python=" projects.IAMPolicy
/// " pulumi-lang-yaml=" gcp.projects.IAMPolicy
/// " pulumi-lang-java=" gcp.projects.IAMPolicy
/// "> gcp.projects.IAMPolicy
/// </span>
/// !> **Be careful!** You can accidentally lock yourself out of your project
/// using this resource. Deleting a <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> removes access
/// from anyone without organization-level access to the project. Proceed with caution.
/// It's not recommended to use <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> with your provider project
/// to avoid locking yourself out, and it should generally only be used with projects
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const project = new gcp.projects.IAMPolicy("project", {
/// project: "your-project-id",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// project = gcp.projects.IAMPolicy("project",
/// project="your-project-id",
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var project = new Gcp.Projects.IAMPolicy("project", new()
/// {
/// Project = "your-project-id",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewIAMPolicy(ctx, "project", &projects.IAMPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.projects.IAMPolicy;
/// import com.pulumi.gcp.projects.IAMPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var project = new IAMPolicy("project", IAMPolicyArgs.builder()
/// .project("your-project-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMPolicy
/// properties:
/// project: your-project-id
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const project = new gcp.projects.IAMPolicy("project", {
/// project: "your-project-id",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.admin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// project = gcp.projects.IAMPolicy("project",
/// project="your-project-id",
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var project = new Gcp.Projects.IAMPolicy("project", new()
/// {
/// Project = "your-project-id",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/compute.admin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewIAMPolicy(ctx, "project", &projects.IAMPolicyArgs{
/// Project:    pulumi.String("your-project-id"),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.projects.IAMPolicy;
/// import com.pulumi.gcp.projects.IAMPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var project = new IAMPolicy("project", IAMPolicyArgs.builder()
/// .project("your-project-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMPolicy
/// properties:
/// project: your-project-id
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMBinding
/// " pulumi-lang-dotnet=" gcp.projects.IAMBinding
/// " pulumi-lang-go=" projects.IAMBinding
/// " pulumi-lang-python=" projects.IAMBinding
/// " pulumi-lang-yaml=" gcp.projects.IAMBinding
/// " pulumi-lang-java=" gcp.projects.IAMBinding
/// "> gcp.projects.IAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMBinding("project", {
/// project: "your-project-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMBinding("project",
/// project="your-project-id",
/// role="roles/editor",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.IAMBinding("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
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
/// _, err := projects.NewIAMBinding(ctx, "project", &projects.IAMBindingArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/editor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
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
/// var project = new IAMBinding("project", IAMBindingArgs.builder()
/// .project("your-project-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMBinding
/// properties:
/// project: your-project-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMBinding("project", {
/// project: "your-project-id",
/// role: "roles/container.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMBinding("project",
/// project="your-project-id",
/// role="roles/container.admin",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// var project = new Gcp.Projects.IAMBinding("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/container.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Projects.Inputs.IAMBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// _, err := projects.NewIAMBinding(ctx, "project", &projects.IAMBindingArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/container.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &projects.IAMBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
/// import com.pulumi.gcp.projects.inputs.IAMBindingConditionArgs;
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
/// var project = new IAMBinding("project", IAMBindingArgs.builder()
/// .project("your-project-id")
/// .role("roles/container.admin")
/// .members("user:jane@example.com")
/// .condition(IAMBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMBinding
/// properties:
/// project: your-project-id
/// role: roles/container.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMMember
/// " pulumi-lang-dotnet=" gcp.projects.IAMMember
/// " pulumi-lang-go=" projects.IAMMember
/// " pulumi-lang-python=" projects.IAMMember
/// " pulumi-lang-yaml=" gcp.projects.IAMMember
/// " pulumi-lang-java=" gcp.projects.IAMMember
/// "> gcp.projects.IAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMMember("project", {
/// project: "your-project-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMMember("project",
/// project="your-project-id",
/// role="roles/editor",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.IAMMember("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
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
/// _, err := projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/editor"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
/// var project = new IAMMember("project", IAMMemberArgs.builder()
/// .project("your-project-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMMember
/// properties:
/// project: your-project-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMMember("project", {
/// project: "your-project-id",
/// role: "roles/firebase.admin",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMMember("project",
/// project="your-project-id",
/// role="roles/firebase.admin",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// var project = new Gcp.Projects.IAMMember("project", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/firebase.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Projects.Inputs.IAMMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// _, err := projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/firebase.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &projects.IAMMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.projects.inputs.IAMMemberConditionArgs;
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
/// var project = new IAMMember("project", IAMMemberArgs.builder()
/// .project("your-project-id")
/// .role("roles/firebase.admin")
/// .member("user:jane@example.com")
/// .condition(IAMMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMMember
/// properties:
/// project: your-project-id
/// role: roles/firebase.admin
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.projects.IAMAuditConfig
/// " pulumi-lang-dotnet=" gcp.projects.IAMAuditConfig
/// " pulumi-lang-go=" projects.IAMAuditConfig
/// " pulumi-lang-python=" projects.IAMAuditConfig
/// " pulumi-lang-yaml=" gcp.projects.IAMAuditConfig
/// " pulumi-lang-java=" gcp.projects.IAMAuditConfig
/// "> gcp.projects.IAMAuditConfig
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.IAMAuditConfig("project", {
/// project: "your-project-id",
/// service: "allServices",
/// auditLogConfigs: [
/// {
/// logType: "ADMIN_READ",
/// },
/// {
/// logType: "DATA_READ",
/// exemptedMembers: ["user:joebloggs@example.com"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.IAMAuditConfig("project",
/// project="your-project-id",
/// service="allServices",
/// audit_log_configs=[
/// {
/// "log_type": "ADMIN_READ",
/// },
/// {
/// "log_type": "DATA_READ",
/// "exempted_members": ["user:joebloggs@example.com"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.IAMAuditConfig("project", new()
/// {
/// Project = "your-project-id",
/// Service = "allServices",
/// AuditLogConfigs = new[]
/// {
/// new Gcp.Projects.Inputs.IAMAuditConfigAuditLogConfigArgs
/// {
/// LogType = "ADMIN_READ",
/// },
/// new Gcp.Projects.Inputs.IAMAuditConfigAuditLogConfigArgs
/// {
/// LogType = "DATA_READ",
/// ExemptedMembers = new[]
/// {
/// "user:joebloggs@example.com",
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
/// _, err := projects.NewIAMAuditConfig(ctx, "project", &projects.IAMAuditConfigArgs{
/// Project: pulumi.String("your-project-id"),
/// Service: pulumi.String("allServices"),
/// AuditLogConfigs: projects.IAMAuditConfigAuditLogConfigArray{
/// &projects.IAMAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("ADMIN_READ"),
/// },
/// &projects.IAMAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("DATA_READ"),
/// ExemptedMembers: pulumi.StringArray{
/// pulumi.String("user:joebloggs@example.com"),
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
/// import com.pulumi.gcp.projects.IAMAuditConfig;
/// import com.pulumi.gcp.projects.IAMAuditConfigArgs;
/// import com.pulumi.gcp.projects.inputs.IAMAuditConfigAuditLogConfigArgs;
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
/// var project = new IAMAuditConfig("project", IAMAuditConfigArgs.builder()
/// .project("your-project-id")
/// .service("allServices")
/// .auditLogConfigs(
/// IAMAuditConfigAuditLogConfigArgs.builder()
/// .logType("ADMIN_READ")
/// .build(),
/// IAMAuditConfigAuditLogConfigArgs.builder()
/// .logType("DATA_READ")
/// .exemptedMembers("user:joebloggs@example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMAuditConfig
/// properties:
/// project: your-project-id
/// service: allServices
/// auditLogConfigs:
/// - logType: ADMIN_READ
/// - logType: DATA_READ
/// exemptedMembers:
/// - user:joebloggs@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing Audit Configs
///
/// An audit config can be imported into a `google_project_iam_audit_config` resource using the resource's `project_id` and the `service`, e.g:
///
/// * `"{{project_id}} foo.googleapis.com"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import audit configs:
///
/// tf
///
/// import {
///
/// id = "{{project_id}} foo.googleapis.com"
///
/// to = google_project_iam_audit_config.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:projects/iAMBinding:IAMBinding default "{{project_id}} foo.googleapis.com"
/// ```
class IAMBinding3 extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<IAMBindingCondition3?> condition;

  /// (Computed) The etag of the project's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.<span pulumi-lang-nodejs=" gcp.projects.IAMBinding " pulumi-lang-dotnet=" gcp.projects.IAMBinding " pulumi-lang-go=" projects.IAMBinding " pulumi-lang-python=" projects.IAMBinding " pulumi-lang-yaml=" gcp.projects.IAMBinding " pulumi-lang-java=" gcp.projects.IAMBinding "> gcp.projects.IAMBinding </span>expects <span pulumi-lang-nodejs="`members`" pulumi-lang-dotnet="`Members`" pulumi-lang-go="`members`" pulumi-lang-python="`members`" pulumi-lang-yaml="`members`" pulumi-lang-java="`members`">`members`</span> field while<span pulumi-lang-nodejs=" gcp.projects.IAMMember " pulumi-lang-dotnet=" gcp.projects.IAMMember " pulumi-lang-go=" projects.IAMMember " pulumi-lang-python=" projects.IAMMember " pulumi-lang-yaml=" gcp.projects.IAMMember " pulumi-lang-java=" gcp.projects.IAMMember "> gcp.projects.IAMMember </span>expects <span pulumi-lang-nodejs="`member`" pulumi-lang-dotnet="`Member`" pulumi-lang-go="`member`" pulumi-lang-python="`member`" pulumi-lang-yaml="`member`" pulumi-lang-java="`member`">`member`</span> field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<List<String>> members;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.projects.IAMBinding`" pulumi-lang-dotnet="`gcp.projects.IAMBinding`" pulumi-lang-go="`projects.IAMBinding`" pulumi-lang-python="`projects.IAMBinding`" pulumi-lang-yaml="`gcp.projects.IAMBinding`" pulumi-lang-java="`gcp.projects.IAMBinding`">`gcp.projects.IAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  IAMBinding3(
    String name, {
    IAMBindingArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iAMBinding:IAMBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<IAMBindingCondition3?>();
    this.etag = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
