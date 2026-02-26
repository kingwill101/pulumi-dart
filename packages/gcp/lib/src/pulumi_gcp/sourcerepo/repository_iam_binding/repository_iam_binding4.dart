import 'package:pulumi/pulumi.dart';
import '../repository_iam_binding_condition/repository_iam_binding_condition4.dart';
import 'repository_iam_binding_args4.dart';

/// Three different resources help you manage your IAM policy for Cloud Source Repositories Repository. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-go="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-python="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamPolicy`">`gcp.sourcerepo.RepositoryIamPolicy`</span>: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-go="`sourcerepo.RepositoryIamMember`" pulumi-lang-python="`sourcerepo.RepositoryIamMember`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamMember`">`gcp.sourcerepo.RepositoryIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-go="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-python="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamPolicy`">`gcp.sourcerepo.RepositoryIamPolicy`</span>: Retrieves the IAM policy for the repository
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-go="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-python="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamPolicy`">`gcp.sourcerepo.RepositoryIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-go="`sourcerepo.RepositoryIamMember`" pulumi-lang-python="`sourcerepo.RepositoryIamMember`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamMember`">`gcp.sourcerepo.RepositoryIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-go="`sourcerepo.RepositoryIamMember`" pulumi-lang-python="`sourcerepo.RepositoryIamMember`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamMember`">`gcp.sourcerepo.RepositoryIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-dotnet=" gcp.sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-go=" sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-python=" sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-yaml=" gcp.sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-java=" gcp.sourcerepo.RepositoryIamPolicy
/// "> gcp.sourcerepo.RepositoryIamPolicy
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
/// const policy = new gcp.sourcerepo.RepositoryIamPolicy("policy", {
/// project: my_repo.project,
/// repository: my_repo.name,
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
/// policy = gcp.sourcerepo.RepositoryIamPolicy("policy",
/// project=my_repo["project"],
/// repository=my_repo["name"],
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
/// var policy = new Gcp.SourceRepo.RepositoryIamPolicy("policy", new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
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
/// _, err = sourcerepo.NewRepositoryIamPolicy(ctx, "policy", &sourcerepo.RepositoryIamPolicyArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Repository: pulumi.Any(my_repo.Name),
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
/// import com.pulumi.gcp.sourcerepo.RepositoryIamPolicy;
/// import com.pulumi.gcp.sourcerepo.RepositoryIamPolicyArgs;
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
/// var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
/// .project(my_repo.project())
/// .repository(my_repo.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:sourcerepo:RepositoryIamPolicy
/// properties:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
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
/// ##<span pulumi-lang-nodejs=" gcp.sourcerepo.RepositoryIamBinding
/// " pulumi-lang-dotnet=" gcp.sourcerepo.RepositoryIamBinding
/// " pulumi-lang-go=" sourcerepo.RepositoryIamBinding
/// " pulumi-lang-python=" sourcerepo.RepositoryIamBinding
/// " pulumi-lang-yaml=" gcp.sourcerepo.RepositoryIamBinding
/// " pulumi-lang-java=" gcp.sourcerepo.RepositoryIamBinding
/// "> gcp.sourcerepo.RepositoryIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.sourcerepo.RepositoryIamBinding("binding", {
/// project: my_repo.project,
/// repository: my_repo.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.sourcerepo.RepositoryIamBinding("binding",
/// project=my_repo["project"],
/// repository=my_repo["name"],
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
/// var binding = new Gcp.SourceRepo.RepositoryIamBinding("binding", new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sourcerepo.NewRepositoryIamBinding(ctx, "binding", &sourcerepo.RepositoryIamBindingArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.sourcerepo.RepositoryIamBinding;
/// import com.pulumi.gcp.sourcerepo.RepositoryIamBindingArgs;
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
/// var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
/// .project(my_repo.project())
/// .repository(my_repo.name())
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
/// type: gcp:sourcerepo:RepositoryIamBinding
/// properties:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.sourcerepo.RepositoryIamMember
/// " pulumi-lang-dotnet=" gcp.sourcerepo.RepositoryIamMember
/// " pulumi-lang-go=" sourcerepo.RepositoryIamMember
/// " pulumi-lang-python=" sourcerepo.RepositoryIamMember
/// " pulumi-lang-yaml=" gcp.sourcerepo.RepositoryIamMember
/// " pulumi-lang-java=" gcp.sourcerepo.RepositoryIamMember
/// "> gcp.sourcerepo.RepositoryIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.sourcerepo.RepositoryIamMember("member", {
/// project: my_repo.project,
/// repository: my_repo.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.sourcerepo.RepositoryIamMember("member",
/// project=my_repo["project"],
/// repository=my_repo["name"],
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
/// var member = new Gcp.SourceRepo.RepositoryIamMember("member", new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sourcerepo.NewRepositoryIamMember(ctx, "member", &sourcerepo.RepositoryIamMemberArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/viewer"),
/// Member:     pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.sourcerepo.RepositoryIamMember;
/// import com.pulumi.gcp.sourcerepo.RepositoryIamMemberArgs;
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
/// var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
/// .project(my_repo.project())
/// .repository(my_repo.name())
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
/// type: gcp:sourcerepo:RepositoryIamMember
/// properties:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
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
/// # IAM policy for Cloud Source Repositories Repository
///
/// Three different resources help you manage your IAM policy for Cloud Source Repositories Repository. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-go="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-python="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamPolicy`">`gcp.sourcerepo.RepositoryIamPolicy`</span>: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-go="`sourcerepo.RepositoryIamMember`" pulumi-lang-python="`sourcerepo.RepositoryIamMember`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamMember`">`gcp.sourcerepo.RepositoryIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-go="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-python="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamPolicy`">`gcp.sourcerepo.RepositoryIamPolicy`</span>: Retrieves the IAM policy for the repository
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-go="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-python="`sourcerepo.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamPolicy`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamPolicy`">`gcp.sourcerepo.RepositoryIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-go="`sourcerepo.RepositoryIamMember`" pulumi-lang-python="`sourcerepo.RepositoryIamMember`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamMember`">`gcp.sourcerepo.RepositoryIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-go="`sourcerepo.RepositoryIamMember`" pulumi-lang-python="`sourcerepo.RepositoryIamMember`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamMember`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamMember`">`gcp.sourcerepo.RepositoryIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-dotnet=" gcp.sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-go=" sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-python=" sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-yaml=" gcp.sourcerepo.RepositoryIamPolicy
/// " pulumi-lang-java=" gcp.sourcerepo.RepositoryIamPolicy
/// "> gcp.sourcerepo.RepositoryIamPolicy
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
/// const policy = new gcp.sourcerepo.RepositoryIamPolicy("policy", {
/// project: my_repo.project,
/// repository: my_repo.name,
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
/// policy = gcp.sourcerepo.RepositoryIamPolicy("policy",
/// project=my_repo["project"],
/// repository=my_repo["name"],
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
/// var policy = new Gcp.SourceRepo.RepositoryIamPolicy("policy", new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
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
/// _, err = sourcerepo.NewRepositoryIamPolicy(ctx, "policy", &sourcerepo.RepositoryIamPolicyArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Repository: pulumi.Any(my_repo.Name),
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
/// import com.pulumi.gcp.sourcerepo.RepositoryIamPolicy;
/// import com.pulumi.gcp.sourcerepo.RepositoryIamPolicyArgs;
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
/// var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
/// .project(my_repo.project())
/// .repository(my_repo.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:sourcerepo:RepositoryIamPolicy
/// properties:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
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
/// ##<span pulumi-lang-nodejs=" gcp.sourcerepo.RepositoryIamBinding
/// " pulumi-lang-dotnet=" gcp.sourcerepo.RepositoryIamBinding
/// " pulumi-lang-go=" sourcerepo.RepositoryIamBinding
/// " pulumi-lang-python=" sourcerepo.RepositoryIamBinding
/// " pulumi-lang-yaml=" gcp.sourcerepo.RepositoryIamBinding
/// " pulumi-lang-java=" gcp.sourcerepo.RepositoryIamBinding
/// "> gcp.sourcerepo.RepositoryIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.sourcerepo.RepositoryIamBinding("binding", {
/// project: my_repo.project,
/// repository: my_repo.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.sourcerepo.RepositoryIamBinding("binding",
/// project=my_repo["project"],
/// repository=my_repo["name"],
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
/// var binding = new Gcp.SourceRepo.RepositoryIamBinding("binding", new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sourcerepo.NewRepositoryIamBinding(ctx, "binding", &sourcerepo.RepositoryIamBindingArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.sourcerepo.RepositoryIamBinding;
/// import com.pulumi.gcp.sourcerepo.RepositoryIamBindingArgs;
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
/// var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
/// .project(my_repo.project())
/// .repository(my_repo.name())
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
/// type: gcp:sourcerepo:RepositoryIamBinding
/// properties:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.sourcerepo.RepositoryIamMember
/// " pulumi-lang-dotnet=" gcp.sourcerepo.RepositoryIamMember
/// " pulumi-lang-go=" sourcerepo.RepositoryIamMember
/// " pulumi-lang-python=" sourcerepo.RepositoryIamMember
/// " pulumi-lang-yaml=" gcp.sourcerepo.RepositoryIamMember
/// " pulumi-lang-java=" gcp.sourcerepo.RepositoryIamMember
/// "> gcp.sourcerepo.RepositoryIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.sourcerepo.RepositoryIamMember("member", {
/// project: my_repo.project,
/// repository: my_repo.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.sourcerepo.RepositoryIamMember("member",
/// project=my_repo["project"],
/// repository=my_repo["name"],
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
/// var member = new Gcp.SourceRepo.RepositoryIamMember("member", new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sourcerepo.NewRepositoryIamMember(ctx, "member", &sourcerepo.RepositoryIamMemberArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/viewer"),
/// Member:     pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.sourcerepo.RepositoryIamMember;
/// import com.pulumi.gcp.sourcerepo.RepositoryIamMemberArgs;
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
/// var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
/// .project(my_repo.project())
/// .repository(my_repo.name())
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
/// type: gcp:sourcerepo:RepositoryIamMember
/// properties:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/repos/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Source Repositories repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/repos/{{repository}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/repos/{{repository}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repositoryIamBinding:RepositoryIamBinding editor projects/{{project}}/repos/{{repository}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamBinding4 extends CustomResource {
  late final Output<RepositoryIamBindingCondition4?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

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

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> repository;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-go="`sourcerepo.RepositoryIamBinding`" pulumi-lang-python="`sourcerepo.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.sourcerepo.RepositoryIamBinding`" pulumi-lang-java="`gcp.sourcerepo.RepositoryIamBinding`">`gcp.sourcerepo.RepositoryIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  RepositoryIamBinding4(
    String name, {
    RepositoryIamBindingArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sourcerepo/repositoryIamBinding:RepositoryIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<RepositoryIamBindingCondition4?>();
    this.etag = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.repository = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
