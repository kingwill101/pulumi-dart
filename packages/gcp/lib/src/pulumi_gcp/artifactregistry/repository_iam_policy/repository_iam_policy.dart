import 'package:pulumi/pulumi.dart';
import 'repository_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Artifact Registry Repository. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-go="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-python="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamPolicy`">`gcp.artifactregistry.RepositoryIamPolicy`</span>: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-go="`artifactregistry.RepositoryIamMember`" pulumi-lang-python="`artifactregistry.RepositoryIamMember`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamMember`">`gcp.artifactregistry.RepositoryIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-go="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-python="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamPolicy`">`gcp.artifactregistry.RepositoryIamPolicy`</span>: Retrieves the IAM policy for the repository
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-go="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-python="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamPolicy`">`gcp.artifactregistry.RepositoryIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-go="`artifactregistry.RepositoryIamMember`" pulumi-lang-python="`artifactregistry.RepositoryIamMember`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamMember`">`gcp.artifactregistry.RepositoryIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-go="`artifactregistry.RepositoryIamMember`" pulumi-lang-python="`artifactregistry.RepositoryIamMember`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamMember`">`gcp.artifactregistry.RepositoryIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-dotnet=" gcp.artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-go=" artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-python=" artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-yaml=" gcp.artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-java=" gcp.artifactregistry.RepositoryIamPolicy
/// "> gcp.artifactregistry.RepositoryIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/artifactregistry.reader",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.artifactregistry.RepositoryIamPolicy("policy", {
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/artifactregistry.reader",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.artifactregistry.RepositoryIamPolicy("policy",
/// project=my_repo["project"],
/// location=my_repo["location"],
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
/// Role = "roles/artifactregistry.reader",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.ArtifactRegistry.RepositoryIamPolicy("policy", new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/artifactregistry.reader",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = artifactregistry.NewRepositoryIamPolicy(ctx, "policy", &artifactregistry.RepositoryIamPolicyArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Location:   pulumi.Any(my_repo.Location),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicy;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicyArgs;
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
/// .role("roles/artifactregistry.reader")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
/// .project(my_repo.project())
/// .location(my_repo.location())
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
/// type: gcp:artifactregistry:RepositoryIamPolicy
/// properties:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/artifactregistry.reader
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.artifactregistry.RepositoryIamBinding
/// " pulumi-lang-dotnet=" gcp.artifactregistry.RepositoryIamBinding
/// " pulumi-lang-go=" artifactregistry.RepositoryIamBinding
/// " pulumi-lang-python=" artifactregistry.RepositoryIamBinding
/// " pulumi-lang-yaml=" gcp.artifactregistry.RepositoryIamBinding
/// " pulumi-lang-java=" gcp.artifactregistry.RepositoryIamBinding
/// "> gcp.artifactregistry.RepositoryIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.artifactregistry.RepositoryIamBinding("binding", {
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// role: "roles/artifactregistry.reader",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.artifactregistry.RepositoryIamBinding("binding",
/// project=my_repo["project"],
/// location=my_repo["location"],
/// repository=my_repo["name"],
/// role="roles/artifactregistry.reader",
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
/// var binding = new Gcp.ArtifactRegistry.RepositoryIamBinding("binding", new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
/// Repository = my_repo.Name,
/// Role = "roles/artifactregistry.reader",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.NewRepositoryIamBinding(ctx, "binding", &artifactregistry.RepositoryIamBindingArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Location:   pulumi.Any(my_repo.Location),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBinding;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBindingArgs;
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
/// .location(my_repo.location())
/// .repository(my_repo.name())
/// .role("roles/artifactregistry.reader")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:artifactregistry:RepositoryIamBinding
/// properties:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// role: roles/artifactregistry.reader
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.artifactregistry.RepositoryIamMember
/// " pulumi-lang-dotnet=" gcp.artifactregistry.RepositoryIamMember
/// " pulumi-lang-go=" artifactregistry.RepositoryIamMember
/// " pulumi-lang-python=" artifactregistry.RepositoryIamMember
/// " pulumi-lang-yaml=" gcp.artifactregistry.RepositoryIamMember
/// " pulumi-lang-java=" gcp.artifactregistry.RepositoryIamMember
/// "> gcp.artifactregistry.RepositoryIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.artifactregistry.RepositoryIamMember("member", {
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// role: "roles/artifactregistry.reader",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.artifactregistry.RepositoryIamMember("member",
/// project=my_repo["project"],
/// location=my_repo["location"],
/// repository=my_repo["name"],
/// role="roles/artifactregistry.reader",
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
/// var member = new Gcp.ArtifactRegistry.RepositoryIamMember("member", new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
/// Repository = my_repo.Name,
/// Role = "roles/artifactregistry.reader",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.NewRepositoryIamMember(ctx, "member", &artifactregistry.RepositoryIamMemberArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Location:   pulumi.Any(my_repo.Location),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMember;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMemberArgs;
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
/// .location(my_repo.location())
/// .repository(my_repo.name())
/// .role("roles/artifactregistry.reader")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:artifactregistry:RepositoryIamMember
/// properties:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// role: roles/artifactregistry.reader
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Artifact Registry Repository
///
/// Three different resources help you manage your IAM policy for Artifact Registry Repository. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-go="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-python="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamPolicy`">`gcp.artifactregistry.RepositoryIamPolicy`</span>: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-go="`artifactregistry.RepositoryIamMember`" pulumi-lang-python="`artifactregistry.RepositoryIamMember`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamMember`">`gcp.artifactregistry.RepositoryIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-go="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-python="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamPolicy`">`gcp.artifactregistry.RepositoryIamPolicy`</span>: Retrieves the IAM policy for the repository
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-go="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-python="`artifactregistry.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamPolicy`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamPolicy`">`gcp.artifactregistry.RepositoryIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-go="`artifactregistry.RepositoryIamMember`" pulumi-lang-python="`artifactregistry.RepositoryIamMember`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamMember`">`gcp.artifactregistry.RepositoryIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-go="`artifactregistry.RepositoryIamMember`" pulumi-lang-python="`artifactregistry.RepositoryIamMember`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamMember`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamMember`">`gcp.artifactregistry.RepositoryIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-dotnet=" gcp.artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-go=" artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-python=" artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-yaml=" gcp.artifactregistry.RepositoryIamPolicy
/// " pulumi-lang-java=" gcp.artifactregistry.RepositoryIamPolicy
/// "> gcp.artifactregistry.RepositoryIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/artifactregistry.reader",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.artifactregistry.RepositoryIamPolicy("policy", {
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/artifactregistry.reader",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.artifactregistry.RepositoryIamPolicy("policy",
/// project=my_repo["project"],
/// location=my_repo["location"],
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
/// Role = "roles/artifactregistry.reader",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.ArtifactRegistry.RepositoryIamPolicy("policy", new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/artifactregistry.reader",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = artifactregistry.NewRepositoryIamPolicy(ctx, "policy", &artifactregistry.RepositoryIamPolicyArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Location:   pulumi.Any(my_repo.Location),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicy;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicyArgs;
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
/// .role("roles/artifactregistry.reader")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
/// .project(my_repo.project())
/// .location(my_repo.location())
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
/// type: gcp:artifactregistry:RepositoryIamPolicy
/// properties:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/artifactregistry.reader
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.artifactregistry.RepositoryIamBinding
/// " pulumi-lang-dotnet=" gcp.artifactregistry.RepositoryIamBinding
/// " pulumi-lang-go=" artifactregistry.RepositoryIamBinding
/// " pulumi-lang-python=" artifactregistry.RepositoryIamBinding
/// " pulumi-lang-yaml=" gcp.artifactregistry.RepositoryIamBinding
/// " pulumi-lang-java=" gcp.artifactregistry.RepositoryIamBinding
/// "> gcp.artifactregistry.RepositoryIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.artifactregistry.RepositoryIamBinding("binding", {
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// role: "roles/artifactregistry.reader",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.artifactregistry.RepositoryIamBinding("binding",
/// project=my_repo["project"],
/// location=my_repo["location"],
/// repository=my_repo["name"],
/// role="roles/artifactregistry.reader",
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
/// var binding = new Gcp.ArtifactRegistry.RepositoryIamBinding("binding", new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
/// Repository = my_repo.Name,
/// Role = "roles/artifactregistry.reader",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.NewRepositoryIamBinding(ctx, "binding", &artifactregistry.RepositoryIamBindingArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Location:   pulumi.Any(my_repo.Location),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBinding;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBindingArgs;
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
/// .location(my_repo.location())
/// .repository(my_repo.name())
/// .role("roles/artifactregistry.reader")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:artifactregistry:RepositoryIamBinding
/// properties:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// role: roles/artifactregistry.reader
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.artifactregistry.RepositoryIamMember
/// " pulumi-lang-dotnet=" gcp.artifactregistry.RepositoryIamMember
/// " pulumi-lang-go=" artifactregistry.RepositoryIamMember
/// " pulumi-lang-python=" artifactregistry.RepositoryIamMember
/// " pulumi-lang-yaml=" gcp.artifactregistry.RepositoryIamMember
/// " pulumi-lang-java=" gcp.artifactregistry.RepositoryIamMember
/// "> gcp.artifactregistry.RepositoryIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.artifactregistry.RepositoryIamMember("member", {
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// role: "roles/artifactregistry.reader",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.artifactregistry.RepositoryIamMember("member",
/// project=my_repo["project"],
/// location=my_repo["location"],
/// repository=my_repo["name"],
/// role="roles/artifactregistry.reader",
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
/// var member = new Gcp.ArtifactRegistry.RepositoryIamMember("member", new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
/// Repository = my_repo.Name,
/// Role = "roles/artifactregistry.reader",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.NewRepositoryIamMember(ctx, "member", &artifactregistry.RepositoryIamMemberArgs{
/// Project:    pulumi.Any(my_repo.Project),
/// Location:   pulumi.Any(my_repo.Location),
/// Repository: pulumi.Any(my_repo.Name),
/// Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMember;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMemberArgs;
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
/// .location(my_repo.location())
/// .repository(my_repo.name())
/// .role("roles/artifactregistry.reader")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:artifactregistry:RepositoryIamMember
/// properties:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// role: roles/artifactregistry.reader
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/repositories/{{repository}}
///
/// * {{project}}/{{location}}/{{repository}}
///
/// * {{location}}/{{repository}}
///
/// * {{repository}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Artifact Registry repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamPolicy:RepositoryIamPolicy editor "projects/{{project}}/locations/{{location}}/repositories/{{repository}} roles/artifactregistry.reader user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamPolicy:RepositoryIamPolicy editor "projects/{{project}}/locations/{{location}}/repositories/{{repository}} roles/artifactregistry.reader"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamPolicy:RepositoryIamPolicy editor projects/{{project}}/locations/{{location}}/repositories/{{repository}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are <span pulumi-lang-nodejs="`asia`" pulumi-lang-dotnet="`Asia`" pulumi-lang-go="`asia`" pulumi-lang-python="`asia`" pulumi-lang-yaml="`asia`" pulumi-lang-java="`asia`">`asia`</span>, <span pulumi-lang-nodejs="`europe`" pulumi-lang-dotnet="`Europe`" pulumi-lang-go="`europe`" pulumi-lang-python="`europe`" pulumi-lang-yaml="`europe`" pulumi-lang-java="`europe`">`europe`</span>, and <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span>.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the<span pulumi-lang-nodejs="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-dotnet="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-go="
  /// artifactregistry.getLocations
  /// " pulumi-lang-python="
  /// artifactregistry_get_locations
  /// " pulumi-lang-yaml="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-java="
  /// gcp.artifactregistry.getLocations
  /// ">
  /// gcp.artifactregistry.getLocations
  /// </span>data source for possible values. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> repository;

  RepositoryIamPolicy(
    String name, {
    RepositoryIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/repositoryIamPolicy:RepositoryIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.repository = registerOutput<String>('repository');
  }
}
