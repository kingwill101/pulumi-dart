import 'package:pulumi/pulumi.dart';
import 'repository_group_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Gemini for Google Cloud RepositoryGroup. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-go="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-python="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamPolicy`">`gcp.gemini.RepositoryGroupIamPolicy`</span>: Authoritative. Sets the IAM policy for the repositorygroup and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-go="`gemini.RepositoryGroupIamBinding`" pulumi-lang-python="`gemini.RepositoryGroupIamBinding`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamBinding`">`gcp.gemini.RepositoryGroupIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repositorygroup are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-go="`gemini.RepositoryGroupIamMember`" pulumi-lang-python="`gemini.RepositoryGroupIamMember`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamMember`">`gcp.gemini.RepositoryGroupIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repositorygroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-go="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-python="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamPolicy`">`gcp.gemini.RepositoryGroupIamPolicy`</span>: Retrieves the IAM policy for the repositorygroup
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-go="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-python="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamPolicy`">`gcp.gemini.RepositoryGroupIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-go="`gemini.RepositoryGroupIamBinding`" pulumi-lang-python="`gemini.RepositoryGroupIamBinding`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamBinding`">`gcp.gemini.RepositoryGroupIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-go="`gemini.RepositoryGroupIamMember`" pulumi-lang-python="`gemini.RepositoryGroupIamMember`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamMember`">`gcp.gemini.RepositoryGroupIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-go="`gemini.RepositoryGroupIamBinding`" pulumi-lang-python="`gemini.RepositoryGroupIamBinding`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamBinding`">`gcp.gemini.RepositoryGroupIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-go="`gemini.RepositoryGroupIamMember`" pulumi-lang-python="`gemini.RepositoryGroupIamMember`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamMember`">`gcp.gemini.RepositoryGroupIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-dotnet=" gcp.gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-go=" gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-python=" gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-yaml=" gcp.gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-java=" gcp.gemini.RepositoryGroupIamPolicy
/// "> gcp.gemini.RepositoryGroupIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/cloudaicompanion.repositoryGroupsUser",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.gemini.RepositoryGroupIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/cloudaicompanion.repositoryGroupsUser",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.gemini.RepositoryGroupIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"],
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
/// Role = "roles/cloudaicompanion.repositoryGroupsUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Gemini.RepositoryGroupIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/cloudaicompanion.repositoryGroupsUser",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = gemini.NewRepositoryGroupIamPolicy(ctx, "policy", &gemini.RepositoryGroupIamPolicyArgs{
/// Project:             pulumi.Any(example.Project),
/// Location:            pulumi.Any(example.Location),
/// CodeRepositoryIndex: pulumi.Any(example.CodeRepositoryIndex),
/// RepositoryGroupId:   pulumi.Any(example.RepositoryGroupId),
/// PolicyData:          pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.gemini.RepositoryGroupIamPolicy;
/// import com.pulumi.gcp.gemini.RepositoryGroupIamPolicyArgs;
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
/// .role("roles/cloudaicompanion.repositoryGroupsUser")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RepositoryGroupIamPolicy("policy", RepositoryGroupIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gemini:RepositoryGroupIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/cloudaicompanion.repositoryGroupsUser
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gemini.RepositoryGroupIamBinding
/// " pulumi-lang-dotnet=" gcp.gemini.RepositoryGroupIamBinding
/// " pulumi-lang-go=" gemini.RepositoryGroupIamBinding
/// " pulumi-lang-python=" gemini.RepositoryGroupIamBinding
/// " pulumi-lang-yaml=" gcp.gemini.RepositoryGroupIamBinding
/// " pulumi-lang-java=" gcp.gemini.RepositoryGroupIamBinding
/// "> gcp.gemini.RepositoryGroupIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gemini.RepositoryGroupIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// role: "roles/cloudaicompanion.repositoryGroupsUser",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gemini.RepositoryGroupIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"],
/// role="roles/cloudaicompanion.repositoryGroupsUser",
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
/// var binding = new Gcp.Gemini.RepositoryGroupIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// Role = "roles/cloudaicompanion.repositoryGroupsUser",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewRepositoryGroupIamBinding(ctx, "binding", &gemini.RepositoryGroupIamBindingArgs{
/// Project:             pulumi.Any(example.Project),
/// Location:            pulumi.Any(example.Location),
/// CodeRepositoryIndex: pulumi.Any(example.CodeRepositoryIndex),
/// RepositoryGroupId:   pulumi.Any(example.RepositoryGroupId),
/// Role:                pulumi.String("roles/cloudaicompanion.repositoryGroupsUser"),
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
/// import com.pulumi.gcp.gemini.RepositoryGroupIamBinding;
/// import com.pulumi.gcp.gemini.RepositoryGroupIamBindingArgs;
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
/// var binding = new RepositoryGroupIamBinding("binding", RepositoryGroupIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .role("roles/cloudaicompanion.repositoryGroupsUser")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:gemini:RepositoryGroupIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// role: roles/cloudaicompanion.repositoryGroupsUser
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gemini.RepositoryGroupIamMember
/// " pulumi-lang-dotnet=" gcp.gemini.RepositoryGroupIamMember
/// " pulumi-lang-go=" gemini.RepositoryGroupIamMember
/// " pulumi-lang-python=" gemini.RepositoryGroupIamMember
/// " pulumi-lang-yaml=" gcp.gemini.RepositoryGroupIamMember
/// " pulumi-lang-java=" gcp.gemini.RepositoryGroupIamMember
/// "> gcp.gemini.RepositoryGroupIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gemini.RepositoryGroupIamMember("member", {
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// role: "roles/cloudaicompanion.repositoryGroupsUser",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gemini.RepositoryGroupIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"],
/// role="roles/cloudaicompanion.repositoryGroupsUser",
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
/// var member = new Gcp.Gemini.RepositoryGroupIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// Role = "roles/cloudaicompanion.repositoryGroupsUser",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewRepositoryGroupIamMember(ctx, "member", &gemini.RepositoryGroupIamMemberArgs{
/// Project:             pulumi.Any(example.Project),
/// Location:            pulumi.Any(example.Location),
/// CodeRepositoryIndex: pulumi.Any(example.CodeRepositoryIndex),
/// RepositoryGroupId:   pulumi.Any(example.RepositoryGroupId),
/// Role:                pulumi.String("roles/cloudaicompanion.repositoryGroupsUser"),
/// Member:              pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.gemini.RepositoryGroupIamMember;
/// import com.pulumi.gcp.gemini.RepositoryGroupIamMemberArgs;
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
/// var member = new RepositoryGroupIamMember("member", RepositoryGroupIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .role("roles/cloudaicompanion.repositoryGroupsUser")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:gemini:RepositoryGroupIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// role: roles/cloudaicompanion.repositoryGroupsUser
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Gemini for Google Cloud RepositoryGroup
///
/// Three different resources help you manage your IAM policy for Gemini for Google Cloud RepositoryGroup. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-go="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-python="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamPolicy`">`gcp.gemini.RepositoryGroupIamPolicy`</span>: Authoritative. Sets the IAM policy for the repositorygroup and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-go="`gemini.RepositoryGroupIamBinding`" pulumi-lang-python="`gemini.RepositoryGroupIamBinding`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamBinding`">`gcp.gemini.RepositoryGroupIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repositorygroup are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-go="`gemini.RepositoryGroupIamMember`" pulumi-lang-python="`gemini.RepositoryGroupIamMember`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamMember`">`gcp.gemini.RepositoryGroupIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repositorygroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-go="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-python="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamPolicy`">`gcp.gemini.RepositoryGroupIamPolicy`</span>: Retrieves the IAM policy for the repositorygroup
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-go="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-python="`gemini.RepositoryGroupIamPolicy`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamPolicy`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamPolicy`">`gcp.gemini.RepositoryGroupIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-go="`gemini.RepositoryGroupIamBinding`" pulumi-lang-python="`gemini.RepositoryGroupIamBinding`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamBinding`">`gcp.gemini.RepositoryGroupIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-go="`gemini.RepositoryGroupIamMember`" pulumi-lang-python="`gemini.RepositoryGroupIamMember`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamMember`">`gcp.gemini.RepositoryGroupIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-go="`gemini.RepositoryGroupIamBinding`" pulumi-lang-python="`gemini.RepositoryGroupIamBinding`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamBinding`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamBinding`">`gcp.gemini.RepositoryGroupIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-dotnet="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-go="`gemini.RepositoryGroupIamMember`" pulumi-lang-python="`gemini.RepositoryGroupIamMember`" pulumi-lang-yaml="`gcp.gemini.RepositoryGroupIamMember`" pulumi-lang-java="`gcp.gemini.RepositoryGroupIamMember`">`gcp.gemini.RepositoryGroupIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-dotnet=" gcp.gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-go=" gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-python=" gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-yaml=" gcp.gemini.RepositoryGroupIamPolicy
/// " pulumi-lang-java=" gcp.gemini.RepositoryGroupIamPolicy
/// "> gcp.gemini.RepositoryGroupIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/cloudaicompanion.repositoryGroupsUser",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.gemini.RepositoryGroupIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/cloudaicompanion.repositoryGroupsUser",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.gemini.RepositoryGroupIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"],
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
/// Role = "roles/cloudaicompanion.repositoryGroupsUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Gemini.RepositoryGroupIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/cloudaicompanion.repositoryGroupsUser",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = gemini.NewRepositoryGroupIamPolicy(ctx, "policy", &gemini.RepositoryGroupIamPolicyArgs{
/// Project:             pulumi.Any(example.Project),
/// Location:            pulumi.Any(example.Location),
/// CodeRepositoryIndex: pulumi.Any(example.CodeRepositoryIndex),
/// RepositoryGroupId:   pulumi.Any(example.RepositoryGroupId),
/// PolicyData:          pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.gemini.RepositoryGroupIamPolicy;
/// import com.pulumi.gcp.gemini.RepositoryGroupIamPolicyArgs;
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
/// .role("roles/cloudaicompanion.repositoryGroupsUser")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RepositoryGroupIamPolicy("policy", RepositoryGroupIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gemini:RepositoryGroupIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/cloudaicompanion.repositoryGroupsUser
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gemini.RepositoryGroupIamBinding
/// " pulumi-lang-dotnet=" gcp.gemini.RepositoryGroupIamBinding
/// " pulumi-lang-go=" gemini.RepositoryGroupIamBinding
/// " pulumi-lang-python=" gemini.RepositoryGroupIamBinding
/// " pulumi-lang-yaml=" gcp.gemini.RepositoryGroupIamBinding
/// " pulumi-lang-java=" gcp.gemini.RepositoryGroupIamBinding
/// "> gcp.gemini.RepositoryGroupIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gemini.RepositoryGroupIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// role: "roles/cloudaicompanion.repositoryGroupsUser",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gemini.RepositoryGroupIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"],
/// role="roles/cloudaicompanion.repositoryGroupsUser",
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
/// var binding = new Gcp.Gemini.RepositoryGroupIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// Role = "roles/cloudaicompanion.repositoryGroupsUser",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewRepositoryGroupIamBinding(ctx, "binding", &gemini.RepositoryGroupIamBindingArgs{
/// Project:             pulumi.Any(example.Project),
/// Location:            pulumi.Any(example.Location),
/// CodeRepositoryIndex: pulumi.Any(example.CodeRepositoryIndex),
/// RepositoryGroupId:   pulumi.Any(example.RepositoryGroupId),
/// Role:                pulumi.String("roles/cloudaicompanion.repositoryGroupsUser"),
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
/// import com.pulumi.gcp.gemini.RepositoryGroupIamBinding;
/// import com.pulumi.gcp.gemini.RepositoryGroupIamBindingArgs;
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
/// var binding = new RepositoryGroupIamBinding("binding", RepositoryGroupIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .role("roles/cloudaicompanion.repositoryGroupsUser")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:gemini:RepositoryGroupIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// role: roles/cloudaicompanion.repositoryGroupsUser
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gemini.RepositoryGroupIamMember
/// " pulumi-lang-dotnet=" gcp.gemini.RepositoryGroupIamMember
/// " pulumi-lang-go=" gemini.RepositoryGroupIamMember
/// " pulumi-lang-python=" gemini.RepositoryGroupIamMember
/// " pulumi-lang-yaml=" gcp.gemini.RepositoryGroupIamMember
/// " pulumi-lang-java=" gcp.gemini.RepositoryGroupIamMember
/// "> gcp.gemini.RepositoryGroupIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gemini.RepositoryGroupIamMember("member", {
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// role: "roles/cloudaicompanion.repositoryGroupsUser",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gemini.RepositoryGroupIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"],
/// role="roles/cloudaicompanion.repositoryGroupsUser",
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
/// var member = new Gcp.Gemini.RepositoryGroupIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// Role = "roles/cloudaicompanion.repositoryGroupsUser",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewRepositoryGroupIamMember(ctx, "member", &gemini.RepositoryGroupIamMemberArgs{
/// Project:             pulumi.Any(example.Project),
/// Location:            pulumi.Any(example.Location),
/// CodeRepositoryIndex: pulumi.Any(example.CodeRepositoryIndex),
/// RepositoryGroupId:   pulumi.Any(example.RepositoryGroupId),
/// Role:                pulumi.String("roles/cloudaicompanion.repositoryGroupsUser"),
/// Member:              pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.gemini.RepositoryGroupIamMember;
/// import com.pulumi.gcp.gemini.RepositoryGroupIamMemberArgs;
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
/// var member = new RepositoryGroupIamMember("member", RepositoryGroupIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .role("roles/cloudaicompanion.repositoryGroupsUser")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:gemini:RepositoryGroupIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// role: roles/cloudaicompanion.repositoryGroupsUser
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
///
/// * {{project}}/{{location}}/{{code_repository_index}}/{{repository_group_id}}
///
/// * {{location}}/{{code_repository_index}}/{{repository_group_id}}
///
/// * {{repository_group_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Gemini for Google Cloud repositorygroup IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy editor "projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}} roles/cloudaicompanion.repositoryGroupsUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy editor "projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}} roles/cloudaicompanion.repositoryGroupsUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy editor projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryGroupIamPolicy extends CustomResource {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  late final Output<String> codeRepositoryIndex;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final Output<String> repositoryGroupId;

  RepositoryGroupIamPolicy(
    String name, {
    RepositoryGroupIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeRepositoryIndex = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.repositoryGroupId = Output.createUnknown<String>();
  }
}
