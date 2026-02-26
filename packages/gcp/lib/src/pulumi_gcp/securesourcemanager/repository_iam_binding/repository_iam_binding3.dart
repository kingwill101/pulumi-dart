import 'package:pulumi/pulumi.dart';
import '../repository_iam_binding_condition/repository_iam_binding_condition3.dart';
import 'repository_iam_binding_args3.dart';

/// Three different resources help you manage your IAM policy for Secure Source Manager Repository. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-go="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-python="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamPolicy`">`gcp.securesourcemanager.RepositoryIamPolicy`</span>: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-go="`securesourcemanager.RepositoryIamMember`" pulumi-lang-python="`securesourcemanager.RepositoryIamMember`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamMember`">`gcp.securesourcemanager.RepositoryIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-go="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-python="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamPolicy`">`gcp.securesourcemanager.RepositoryIamPolicy`</span>: Retrieves the IAM policy for the repository
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-go="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-python="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamPolicy`">`gcp.securesourcemanager.RepositoryIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-go="`securesourcemanager.RepositoryIamMember`" pulumi-lang-python="`securesourcemanager.RepositoryIamMember`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamMember`">`gcp.securesourcemanager.RepositoryIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-go="`securesourcemanager.RepositoryIamMember`" pulumi-lang-python="`securesourcemanager.RepositoryIamMember`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamMember`">`gcp.securesourcemanager.RepositoryIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-dotnet=" gcp.securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-go=" securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-python=" securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-yaml=" gcp.securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-java=" gcp.securesourcemanager.RepositoryIamPolicy
/// "> gcp.securesourcemanager.RepositoryIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/securesourcemanager.repoAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.securesourcemanager.RepositoryIamPolicy("policy", {
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/securesourcemanager.repoAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.securesourcemanager.RepositoryIamPolicy("policy",
/// project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"],
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
/// Role = "roles/securesourcemanager.repoAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.SecureSourceManager.RepositoryIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/securesourcemanager.repoAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = securesourcemanager.NewRepositoryIamPolicy(ctx, "policy", &securesourcemanager.RepositoryIamPolicyArgs{
/// Project:      pulumi.Any(_default.Project),
/// Location:     pulumi.Any(_default.Location),
/// RepositoryId: pulumi.Any(_default.RepositoryId),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicy;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicyArgs;
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
/// .role("roles/securesourcemanager.repoAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:securesourcemanager:RepositoryIamPolicy
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/securesourcemanager.repoAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-dotnet=" gcp.securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-go=" securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-python=" securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-yaml=" gcp.securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-java=" gcp.securesourcemanager.RepositoryIamBinding
/// "> gcp.securesourcemanager.RepositoryIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securesourcemanager.RepositoryIamBinding("binding", {
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// role: "roles/securesourcemanager.repoAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securesourcemanager.RepositoryIamBinding("binding",
/// project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"],
/// role="roles/securesourcemanager.repoAdmin",
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
/// var binding = new Gcp.SecureSourceManager.RepositoryIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
/// Role = "roles/securesourcemanager.repoAdmin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securesourcemanager.NewRepositoryIamBinding(ctx, "binding", &securesourcemanager.RepositoryIamBindingArgs{
/// Project:      pulumi.Any(_default.Project),
/// Location:     pulumi.Any(_default.Location),
/// RepositoryId: pulumi.Any(_default.RepositoryId),
/// Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBinding;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBindingArgs;
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
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .role("roles/securesourcemanager.repoAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:securesourcemanager:RepositoryIamBinding
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// role: roles/securesourcemanager.repoAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.securesourcemanager.RepositoryIamMember
/// " pulumi-lang-dotnet=" gcp.securesourcemanager.RepositoryIamMember
/// " pulumi-lang-go=" securesourcemanager.RepositoryIamMember
/// " pulumi-lang-python=" securesourcemanager.RepositoryIamMember
/// " pulumi-lang-yaml=" gcp.securesourcemanager.RepositoryIamMember
/// " pulumi-lang-java=" gcp.securesourcemanager.RepositoryIamMember
/// "> gcp.securesourcemanager.RepositoryIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securesourcemanager.RepositoryIamMember("member", {
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// role: "roles/securesourcemanager.repoAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securesourcemanager.RepositoryIamMember("member",
/// project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"],
/// role="roles/securesourcemanager.repoAdmin",
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
/// var member = new Gcp.SecureSourceManager.RepositoryIamMember("member", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
/// Role = "roles/securesourcemanager.repoAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securesourcemanager.NewRepositoryIamMember(ctx, "member", &securesourcemanager.RepositoryIamMemberArgs{
/// Project:      pulumi.Any(_default.Project),
/// Location:     pulumi.Any(_default.Location),
/// RepositoryId: pulumi.Any(_default.RepositoryId),
/// Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMember;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMemberArgs;
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
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .role("roles/securesourcemanager.repoAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:securesourcemanager:RepositoryIamMember
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// role: roles/securesourcemanager.repoAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Secure Source Manager Repository
///
/// Three different resources help you manage your IAM policy for Secure Source Manager Repository. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-go="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-python="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamPolicy`">`gcp.securesourcemanager.RepositoryIamPolicy`</span>: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-go="`securesourcemanager.RepositoryIamMember`" pulumi-lang-python="`securesourcemanager.RepositoryIamMember`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamMember`">`gcp.securesourcemanager.RepositoryIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-go="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-python="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamPolicy`">`gcp.securesourcemanager.RepositoryIamPolicy`</span>: Retrieves the IAM policy for the repository
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-go="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-python="`securesourcemanager.RepositoryIamPolicy`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamPolicy`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamPolicy`">`gcp.securesourcemanager.RepositoryIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-go="`securesourcemanager.RepositoryIamMember`" pulumi-lang-python="`securesourcemanager.RepositoryIamMember`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamMember`">`gcp.securesourcemanager.RepositoryIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-go="`securesourcemanager.RepositoryIamMember`" pulumi-lang-python="`securesourcemanager.RepositoryIamMember`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamMember`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamMember`">`gcp.securesourcemanager.RepositoryIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-dotnet=" gcp.securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-go=" securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-python=" securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-yaml=" gcp.securesourcemanager.RepositoryIamPolicy
/// " pulumi-lang-java=" gcp.securesourcemanager.RepositoryIamPolicy
/// "> gcp.securesourcemanager.RepositoryIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/securesourcemanager.repoAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.securesourcemanager.RepositoryIamPolicy("policy", {
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/securesourcemanager.repoAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.securesourcemanager.RepositoryIamPolicy("policy",
/// project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"],
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
/// Role = "roles/securesourcemanager.repoAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.SecureSourceManager.RepositoryIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/securesourcemanager.repoAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = securesourcemanager.NewRepositoryIamPolicy(ctx, "policy", &securesourcemanager.RepositoryIamPolicyArgs{
/// Project:      pulumi.Any(_default.Project),
/// Location:     pulumi.Any(_default.Location),
/// RepositoryId: pulumi.Any(_default.RepositoryId),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicy;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicyArgs;
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
/// .role("roles/securesourcemanager.repoAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:securesourcemanager:RepositoryIamPolicy
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/securesourcemanager.repoAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-dotnet=" gcp.securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-go=" securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-python=" securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-yaml=" gcp.securesourcemanager.RepositoryIamBinding
/// " pulumi-lang-java=" gcp.securesourcemanager.RepositoryIamBinding
/// "> gcp.securesourcemanager.RepositoryIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securesourcemanager.RepositoryIamBinding("binding", {
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// role: "roles/securesourcemanager.repoAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securesourcemanager.RepositoryIamBinding("binding",
/// project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"],
/// role="roles/securesourcemanager.repoAdmin",
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
/// var binding = new Gcp.SecureSourceManager.RepositoryIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
/// Role = "roles/securesourcemanager.repoAdmin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securesourcemanager.NewRepositoryIamBinding(ctx, "binding", &securesourcemanager.RepositoryIamBindingArgs{
/// Project:      pulumi.Any(_default.Project),
/// Location:     pulumi.Any(_default.Location),
/// RepositoryId: pulumi.Any(_default.RepositoryId),
/// Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBinding;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBindingArgs;
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
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .role("roles/securesourcemanager.repoAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:securesourcemanager:RepositoryIamBinding
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// role: roles/securesourcemanager.repoAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.securesourcemanager.RepositoryIamMember
/// " pulumi-lang-dotnet=" gcp.securesourcemanager.RepositoryIamMember
/// " pulumi-lang-go=" securesourcemanager.RepositoryIamMember
/// " pulumi-lang-python=" securesourcemanager.RepositoryIamMember
/// " pulumi-lang-yaml=" gcp.securesourcemanager.RepositoryIamMember
/// " pulumi-lang-java=" gcp.securesourcemanager.RepositoryIamMember
/// "> gcp.securesourcemanager.RepositoryIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securesourcemanager.RepositoryIamMember("member", {
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// role: "roles/securesourcemanager.repoAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securesourcemanager.RepositoryIamMember("member",
/// project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"],
/// role="roles/securesourcemanager.repoAdmin",
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
/// var member = new Gcp.SecureSourceManager.RepositoryIamMember("member", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
/// Role = "roles/securesourcemanager.repoAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securesourcemanager.NewRepositoryIamMember(ctx, "member", &securesourcemanager.RepositoryIamMemberArgs{
/// Project:      pulumi.Any(_default.Project),
/// Location:     pulumi.Any(_default.Location),
/// RepositoryId: pulumi.Any(_default.RepositoryId),
/// Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMember;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMemberArgs;
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
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .role("roles/securesourcemanager.repoAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:securesourcemanager:RepositoryIamMember
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// role: roles/securesourcemanager.repoAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
///
/// * {{project}}/{{location}}/{{repository_id}}
///
/// * {{location}}/{{repository_id}}
///
/// * {{repository_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Secure Source Manager repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/locations/{{location}}/repositories/{{repository_id}} roles/securesourcemanager.repoAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/locations/{{location}}/repositories/{{repository_id}} roles/securesourcemanager.repoAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamBinding:RepositoryIamBinding editor projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamBinding3 extends CustomResource {
  late final Output<RepositoryIamBindingCondition3?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the Repository.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> repositoryId;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-go="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-python="`securesourcemanager.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.securesourcemanager.RepositoryIamBinding`" pulumi-lang-java="`gcp.securesourcemanager.RepositoryIamBinding`">`gcp.securesourcemanager.RepositoryIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  RepositoryIamBinding3(
    String name, {
    RepositoryIamBindingArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repositoryIamBinding:RepositoryIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RepositoryIamBindingCondition3?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.role = registerOutput<String>('role');
  }
}
