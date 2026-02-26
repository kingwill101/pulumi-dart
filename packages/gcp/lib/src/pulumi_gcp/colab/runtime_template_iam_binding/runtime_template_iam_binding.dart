import 'package:pulumi/pulumi.dart';
import '../runtime_template_iam_binding_condition/runtime_template_iam_binding_condition.dart';
import 'runtime_template_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Colab Enterprise RuntimeTemplate. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-go="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-python="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamPolicy`">`gcp.colab.RuntimeTemplateIamPolicy`</span>: Authoritative. Sets the IAM policy for the runtimetemplate and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtimetemplate are preserved.
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-go="`colab.RuntimeTemplateIamMember`" pulumi-lang-python="`colab.RuntimeTemplateIamMember`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamMember`">`gcp.colab.RuntimeTemplateIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtimetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-go="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-python="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamPolicy`">`gcp.colab.RuntimeTemplateIamPolicy`</span>: Retrieves the IAM policy for the runtimetemplate
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-go="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-python="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamPolicy`">`gcp.colab.RuntimeTemplateIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-go="`colab.RuntimeTemplateIamMember`" pulumi-lang-python="`colab.RuntimeTemplateIamMember`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamMember`">`gcp.colab.RuntimeTemplateIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-go="`colab.RuntimeTemplateIamMember`" pulumi-lang-python="`colab.RuntimeTemplateIamMember`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamMember`">`gcp.colab.RuntimeTemplateIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-dotnet=" gcp.colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-go=" colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-python=" colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-yaml=" gcp.colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-java=" gcp.colab.RuntimeTemplateIamPolicy
/// "> gcp.colab.RuntimeTemplateIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.colab.RuntimeTemplateIamPolicy("policy", {
/// project: runtime_template.project,
/// location: runtime_template.location,
/// runtimeTemplate: runtime_template.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.colab.RuntimeTemplateIamPolicy("policy",
/// project=runtime_template["project"],
/// location=runtime_template["location"],
/// runtime_template=runtime_template["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Colab.RuntimeTemplateIamPolicy("policy", new()
/// {
/// Project = runtime_template.Project,
/// Location = runtime_template.Location,
/// RuntimeTemplate = runtime_template.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = colab.NewRuntimeTemplateIamPolicy(ctx, "policy", &colab.RuntimeTemplateIamPolicyArgs{
/// Project:         pulumi.Any(runtime_template.Project),
/// Location:        pulumi.Any(runtime_template.Location),
/// RuntimeTemplate: pulumi.Any(runtime_template.Name),
/// PolicyData:      pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicy;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RuntimeTemplateIamPolicy("policy", RuntimeTemplateIamPolicyArgs.builder()
/// .project(runtime_template.project())
/// .location(runtime_template.location())
/// .runtimeTemplate(runtime_template.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:colab:RuntimeTemplateIamPolicy
/// properties:
/// project: ${["runtime-template"].project}
/// location: ${["runtime-template"].location}
/// runtimeTemplate: ${["runtime-template"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.colab.RuntimeTemplateIamBinding
/// " pulumi-lang-dotnet=" gcp.colab.RuntimeTemplateIamBinding
/// " pulumi-lang-go=" colab.RuntimeTemplateIamBinding
/// " pulumi-lang-python=" colab.RuntimeTemplateIamBinding
/// " pulumi-lang-yaml=" gcp.colab.RuntimeTemplateIamBinding
/// " pulumi-lang-java=" gcp.colab.RuntimeTemplateIamBinding
/// "> gcp.colab.RuntimeTemplateIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.colab.RuntimeTemplateIamBinding("binding", {
/// project: runtime_template.project,
/// location: runtime_template.location,
/// runtimeTemplate: runtime_template.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.colab.RuntimeTemplateIamBinding("binding",
/// project=runtime_template["project"],
/// location=runtime_template["location"],
/// runtime_template=runtime_template["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.Colab.RuntimeTemplateIamBinding("binding", new()
/// {
/// Project = runtime_template.Project,
/// Location = runtime_template.Location,
/// RuntimeTemplate = runtime_template.Name,
/// Role = "roles/viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := colab.NewRuntimeTemplateIamBinding(ctx, "binding", &colab.RuntimeTemplateIamBindingArgs{
/// Project:         pulumi.Any(runtime_template.Project),
/// Location:        pulumi.Any(runtime_template.Location),
/// RuntimeTemplate: pulumi.Any(runtime_template.Name),
/// Role:            pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBinding;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBindingArgs;
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
/// var binding = new RuntimeTemplateIamBinding("binding", RuntimeTemplateIamBindingArgs.builder()
/// .project(runtime_template.project())
/// .location(runtime_template.location())
/// .runtimeTemplate(runtime_template.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:colab:RuntimeTemplateIamBinding
/// properties:
/// project: ${["runtime-template"].project}
/// location: ${["runtime-template"].location}
/// runtimeTemplate: ${["runtime-template"].name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.colab.RuntimeTemplateIamMember
/// " pulumi-lang-dotnet=" gcp.colab.RuntimeTemplateIamMember
/// " pulumi-lang-go=" colab.RuntimeTemplateIamMember
/// " pulumi-lang-python=" colab.RuntimeTemplateIamMember
/// " pulumi-lang-yaml=" gcp.colab.RuntimeTemplateIamMember
/// " pulumi-lang-java=" gcp.colab.RuntimeTemplateIamMember
/// "> gcp.colab.RuntimeTemplateIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.colab.RuntimeTemplateIamMember("member", {
/// project: runtime_template.project,
/// location: runtime_template.location,
/// runtimeTemplate: runtime_template.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.colab.RuntimeTemplateIamMember("member",
/// project=runtime_template["project"],
/// location=runtime_template["location"],
/// runtime_template=runtime_template["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.Colab.RuntimeTemplateIamMember("member", new()
/// {
/// Project = runtime_template.Project,
/// Location = runtime_template.Location,
/// RuntimeTemplate = runtime_template.Name,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := colab.NewRuntimeTemplateIamMember(ctx, "member", &colab.RuntimeTemplateIamMemberArgs{
/// Project:         pulumi.Any(runtime_template.Project),
/// Location:        pulumi.Any(runtime_template.Location),
/// RuntimeTemplate: pulumi.Any(runtime_template.Name),
/// Role:            pulumi.String("roles/viewer"),
/// Member:          pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMember;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMemberArgs;
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
/// var member = new RuntimeTemplateIamMember("member", RuntimeTemplateIamMemberArgs.builder()
/// .project(runtime_template.project())
/// .location(runtime_template.location())
/// .runtimeTemplate(runtime_template.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:colab:RuntimeTemplateIamMember
/// properties:
/// project: ${["runtime-template"].project}
/// location: ${["runtime-template"].location}
/// runtimeTemplate: ${["runtime-template"].name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Colab Enterprise RuntimeTemplate
///
/// Three different resources help you manage your IAM policy for Colab Enterprise RuntimeTemplate. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-go="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-python="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamPolicy`">`gcp.colab.RuntimeTemplateIamPolicy`</span>: Authoritative. Sets the IAM policy for the runtimetemplate and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtimetemplate are preserved.
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-go="`colab.RuntimeTemplateIamMember`" pulumi-lang-python="`colab.RuntimeTemplateIamMember`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamMember`">`gcp.colab.RuntimeTemplateIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtimetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-go="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-python="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamPolicy`">`gcp.colab.RuntimeTemplateIamPolicy`</span>: Retrieves the IAM policy for the runtimetemplate
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-go="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-python="`colab.RuntimeTemplateIamPolicy`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamPolicy`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamPolicy`">`gcp.colab.RuntimeTemplateIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-go="`colab.RuntimeTemplateIamMember`" pulumi-lang-python="`colab.RuntimeTemplateIamMember`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamMember`">`gcp.colab.RuntimeTemplateIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-go="`colab.RuntimeTemplateIamMember`" pulumi-lang-python="`colab.RuntimeTemplateIamMember`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamMember`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamMember`">`gcp.colab.RuntimeTemplateIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-dotnet=" gcp.colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-go=" colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-python=" colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-yaml=" gcp.colab.RuntimeTemplateIamPolicy
/// " pulumi-lang-java=" gcp.colab.RuntimeTemplateIamPolicy
/// "> gcp.colab.RuntimeTemplateIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.colab.RuntimeTemplateIamPolicy("policy", {
/// project: runtime_template.project,
/// location: runtime_template.location,
/// runtimeTemplate: runtime_template.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.colab.RuntimeTemplateIamPolicy("policy",
/// project=runtime_template["project"],
/// location=runtime_template["location"],
/// runtime_template=runtime_template["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Colab.RuntimeTemplateIamPolicy("policy", new()
/// {
/// Project = runtime_template.Project,
/// Location = runtime_template.Location,
/// RuntimeTemplate = runtime_template.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = colab.NewRuntimeTemplateIamPolicy(ctx, "policy", &colab.RuntimeTemplateIamPolicyArgs{
/// Project:         pulumi.Any(runtime_template.Project),
/// Location:        pulumi.Any(runtime_template.Location),
/// RuntimeTemplate: pulumi.Any(runtime_template.Name),
/// PolicyData:      pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicy;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RuntimeTemplateIamPolicy("policy", RuntimeTemplateIamPolicyArgs.builder()
/// .project(runtime_template.project())
/// .location(runtime_template.location())
/// .runtimeTemplate(runtime_template.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:colab:RuntimeTemplateIamPolicy
/// properties:
/// project: ${["runtime-template"].project}
/// location: ${["runtime-template"].location}
/// runtimeTemplate: ${["runtime-template"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.colab.RuntimeTemplateIamBinding
/// " pulumi-lang-dotnet=" gcp.colab.RuntimeTemplateIamBinding
/// " pulumi-lang-go=" colab.RuntimeTemplateIamBinding
/// " pulumi-lang-python=" colab.RuntimeTemplateIamBinding
/// " pulumi-lang-yaml=" gcp.colab.RuntimeTemplateIamBinding
/// " pulumi-lang-java=" gcp.colab.RuntimeTemplateIamBinding
/// "> gcp.colab.RuntimeTemplateIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.colab.RuntimeTemplateIamBinding("binding", {
/// project: runtime_template.project,
/// location: runtime_template.location,
/// runtimeTemplate: runtime_template.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.colab.RuntimeTemplateIamBinding("binding",
/// project=runtime_template["project"],
/// location=runtime_template["location"],
/// runtime_template=runtime_template["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.Colab.RuntimeTemplateIamBinding("binding", new()
/// {
/// Project = runtime_template.Project,
/// Location = runtime_template.Location,
/// RuntimeTemplate = runtime_template.Name,
/// Role = "roles/viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := colab.NewRuntimeTemplateIamBinding(ctx, "binding", &colab.RuntimeTemplateIamBindingArgs{
/// Project:         pulumi.Any(runtime_template.Project),
/// Location:        pulumi.Any(runtime_template.Location),
/// RuntimeTemplate: pulumi.Any(runtime_template.Name),
/// Role:            pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBinding;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamBindingArgs;
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
/// var binding = new RuntimeTemplateIamBinding("binding", RuntimeTemplateIamBindingArgs.builder()
/// .project(runtime_template.project())
/// .location(runtime_template.location())
/// .runtimeTemplate(runtime_template.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:colab:RuntimeTemplateIamBinding
/// properties:
/// project: ${["runtime-template"].project}
/// location: ${["runtime-template"].location}
/// runtimeTemplate: ${["runtime-template"].name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.colab.RuntimeTemplateIamMember
/// " pulumi-lang-dotnet=" gcp.colab.RuntimeTemplateIamMember
/// " pulumi-lang-go=" colab.RuntimeTemplateIamMember
/// " pulumi-lang-python=" colab.RuntimeTemplateIamMember
/// " pulumi-lang-yaml=" gcp.colab.RuntimeTemplateIamMember
/// " pulumi-lang-java=" gcp.colab.RuntimeTemplateIamMember
/// "> gcp.colab.RuntimeTemplateIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.colab.RuntimeTemplateIamMember("member", {
/// project: runtime_template.project,
/// location: runtime_template.location,
/// runtimeTemplate: runtime_template.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.colab.RuntimeTemplateIamMember("member",
/// project=runtime_template["project"],
/// location=runtime_template["location"],
/// runtime_template=runtime_template["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.Colab.RuntimeTemplateIamMember("member", new()
/// {
/// Project = runtime_template.Project,
/// Location = runtime_template.Location,
/// RuntimeTemplate = runtime_template.Name,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := colab.NewRuntimeTemplateIamMember(ctx, "member", &colab.RuntimeTemplateIamMemberArgs{
/// Project:         pulumi.Any(runtime_template.Project),
/// Location:        pulumi.Any(runtime_template.Location),
/// RuntimeTemplate: pulumi.Any(runtime_template.Name),
/// Role:            pulumi.String("roles/viewer"),
/// Member:          pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMember;
/// import com.pulumi.gcp.colab.RuntimeTemplateIamMemberArgs;
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
/// var member = new RuntimeTemplateIamMember("member", RuntimeTemplateIamMemberArgs.builder()
/// .project(runtime_template.project())
/// .location(runtime_template.location())
/// .runtimeTemplate(runtime_template.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:colab:RuntimeTemplateIamMember
/// properties:
/// project: ${["runtime-template"].project}
/// location: ${["runtime-template"].location}
/// runtimeTemplate: ${["runtime-template"].name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}}
///
/// * {{project}}/{{location}}/{{runtime_template}}
///
/// * {{location}}/{{runtime_template}}
///
/// * {{runtime_template}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Colab Enterprise runtimetemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamBinding:RuntimeTemplateIamBinding editor "projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamBinding:RuntimeTemplateIamBinding editor "projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamBinding:RuntimeTemplateIamBinding editor projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RuntimeTemplateIamBinding extends CustomResource {
  late final Output<RuntimeTemplateIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-dotnet="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-go="`colab.RuntimeTemplateIamBinding`" pulumi-lang-python="`colab.RuntimeTemplateIamBinding`" pulumi-lang-yaml="`gcp.colab.RuntimeTemplateIamBinding`" pulumi-lang-java="`gcp.colab.RuntimeTemplateIamBinding`">`gcp.colab.RuntimeTemplateIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> runtimeTemplate;

  RuntimeTemplateIamBinding(
    String name, {
    RuntimeTemplateIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplateIamBinding:RuntimeTemplateIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RuntimeTemplateIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.runtimeTemplate = registerOutput<String>('runtimeTemplate');
  }
}
