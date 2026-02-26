import 'package:pulumi/pulumi.dart';
import 'note_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Container Registry Note. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-go="`containeranalysis.NoteIamPolicy`" pulumi-lang-python="`containeranalysis.NoteIamPolicy`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-java="`gcp.containeranalysis.NoteIamPolicy`">`gcp.containeranalysis.NoteIamPolicy`</span>: Authoritative. Sets the IAM policy for the note and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-go="`containeranalysis.NoteIamBinding`" pulumi-lang-python="`containeranalysis.NoteIamBinding`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-java="`gcp.containeranalysis.NoteIamBinding`">`gcp.containeranalysis.NoteIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the note are preserved.
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-go="`containeranalysis.NoteIamMember`" pulumi-lang-python="`containeranalysis.NoteIamMember`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-java="`gcp.containeranalysis.NoteIamMember`">`gcp.containeranalysis.NoteIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the note are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-go="`containeranalysis.NoteIamPolicy`" pulumi-lang-python="`containeranalysis.NoteIamPolicy`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-java="`gcp.containeranalysis.NoteIamPolicy`">`gcp.containeranalysis.NoteIamPolicy`</span>: Retrieves the IAM policy for the note
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-go="`containeranalysis.NoteIamPolicy`" pulumi-lang-python="`containeranalysis.NoteIamPolicy`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-java="`gcp.containeranalysis.NoteIamPolicy`">`gcp.containeranalysis.NoteIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-go="`containeranalysis.NoteIamBinding`" pulumi-lang-python="`containeranalysis.NoteIamBinding`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-java="`gcp.containeranalysis.NoteIamBinding`">`gcp.containeranalysis.NoteIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-go="`containeranalysis.NoteIamMember`" pulumi-lang-python="`containeranalysis.NoteIamMember`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-java="`gcp.containeranalysis.NoteIamMember`">`gcp.containeranalysis.NoteIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-go="`containeranalysis.NoteIamBinding`" pulumi-lang-python="`containeranalysis.NoteIamBinding`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-java="`gcp.containeranalysis.NoteIamBinding`">`gcp.containeranalysis.NoteIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-go="`containeranalysis.NoteIamMember`" pulumi-lang-python="`containeranalysis.NoteIamMember`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-java="`gcp.containeranalysis.NoteIamMember`">`gcp.containeranalysis.NoteIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.containeranalysis.NoteIamPolicy
/// " pulumi-lang-dotnet=" gcp.containeranalysis.NoteIamPolicy
/// " pulumi-lang-go=" containeranalysis.NoteIamPolicy
/// " pulumi-lang-python=" containeranalysis.NoteIamPolicy
/// " pulumi-lang-yaml=" gcp.containeranalysis.NoteIamPolicy
/// " pulumi-lang-java=" gcp.containeranalysis.NoteIamPolicy
/// "> gcp.containeranalysis.NoteIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/containeranalysis.notes.occurrences.viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.containeranalysis.NoteIamPolicy("policy", {
/// project: note.project,
/// note: note.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/containeranalysis.notes.occurrences.viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.containeranalysis.NoteIamPolicy("policy",
/// project=note["project"],
/// note=note["name"],
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
/// Role = "roles/containeranalysis.notes.occurrences.viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.ContainerAnalysis.NoteIamPolicy("policy", new()
/// {
/// Project = note.Project,
/// Note = note.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/containeranalysis.notes.occurrences.viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = containeranalysis.NewNoteIamPolicy(ctx, "policy", &containeranalysis.NoteIamPolicyArgs{
/// Project:    pulumi.Any(note.Project),
/// Note:       pulumi.Any(note.Name),
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
/// import com.pulumi.gcp.containeranalysis.NoteIamPolicy;
/// import com.pulumi.gcp.containeranalysis.NoteIamPolicyArgs;
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
/// .role("roles/containeranalysis.notes.occurrences.viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new NoteIamPolicy("policy", NoteIamPolicyArgs.builder()
/// .project(note.project())
/// .note(note.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:containeranalysis:NoteIamPolicy
/// properties:
/// project: ${note.project}
/// note: ${note.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/containeranalysis.notes.occurrences.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.containeranalysis.NoteIamBinding
/// " pulumi-lang-dotnet=" gcp.containeranalysis.NoteIamBinding
/// " pulumi-lang-go=" containeranalysis.NoteIamBinding
/// " pulumi-lang-python=" containeranalysis.NoteIamBinding
/// " pulumi-lang-yaml=" gcp.containeranalysis.NoteIamBinding
/// " pulumi-lang-java=" gcp.containeranalysis.NoteIamBinding
/// "> gcp.containeranalysis.NoteIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.containeranalysis.NoteIamBinding("binding", {
/// project: note.project,
/// note: note.name,
/// role: "roles/containeranalysis.notes.occurrences.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.containeranalysis.NoteIamBinding("binding",
/// project=note["project"],
/// note=note["name"],
/// role="roles/containeranalysis.notes.occurrences.viewer",
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
/// var binding = new Gcp.ContainerAnalysis.NoteIamBinding("binding", new()
/// {
/// Project = note.Project,
/// Note = note.Name,
/// Role = "roles/containeranalysis.notes.occurrences.viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := containeranalysis.NewNoteIamBinding(ctx, "binding", &containeranalysis.NoteIamBindingArgs{
/// Project: pulumi.Any(note.Project),
/// Note:    pulumi.Any(note.Name),
/// Role:    pulumi.String("roles/containeranalysis.notes.occurrences.viewer"),
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
/// import com.pulumi.gcp.containeranalysis.NoteIamBinding;
/// import com.pulumi.gcp.containeranalysis.NoteIamBindingArgs;
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
/// var binding = new NoteIamBinding("binding", NoteIamBindingArgs.builder()
/// .project(note.project())
/// .note(note.name())
/// .role("roles/containeranalysis.notes.occurrences.viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:containeranalysis:NoteIamBinding
/// properties:
/// project: ${note.project}
/// note: ${note.name}
/// role: roles/containeranalysis.notes.occurrences.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.containeranalysis.NoteIamMember
/// " pulumi-lang-dotnet=" gcp.containeranalysis.NoteIamMember
/// " pulumi-lang-go=" containeranalysis.NoteIamMember
/// " pulumi-lang-python=" containeranalysis.NoteIamMember
/// " pulumi-lang-yaml=" gcp.containeranalysis.NoteIamMember
/// " pulumi-lang-java=" gcp.containeranalysis.NoteIamMember
/// "> gcp.containeranalysis.NoteIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.containeranalysis.NoteIamMember("member", {
/// project: note.project,
/// note: note.name,
/// role: "roles/containeranalysis.notes.occurrences.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.containeranalysis.NoteIamMember("member",
/// project=note["project"],
/// note=note["name"],
/// role="roles/containeranalysis.notes.occurrences.viewer",
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
/// var member = new Gcp.ContainerAnalysis.NoteIamMember("member", new()
/// {
/// Project = note.Project,
/// Note = note.Name,
/// Role = "roles/containeranalysis.notes.occurrences.viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := containeranalysis.NewNoteIamMember(ctx, "member", &containeranalysis.NoteIamMemberArgs{
/// Project: pulumi.Any(note.Project),
/// Note:    pulumi.Any(note.Name),
/// Role:    pulumi.String("roles/containeranalysis.notes.occurrences.viewer"),
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
/// import com.pulumi.gcp.containeranalysis.NoteIamMember;
/// import com.pulumi.gcp.containeranalysis.NoteIamMemberArgs;
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
/// var member = new NoteIamMember("member", NoteIamMemberArgs.builder()
/// .project(note.project())
/// .note(note.name())
/// .role("roles/containeranalysis.notes.occurrences.viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:containeranalysis:NoteIamMember
/// properties:
/// project: ${note.project}
/// note: ${note.name}
/// role: roles/containeranalysis.notes.occurrences.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Container Registry Note
///
/// Three different resources help you manage your IAM policy for Container Registry Note. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-go="`containeranalysis.NoteIamPolicy`" pulumi-lang-python="`containeranalysis.NoteIamPolicy`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-java="`gcp.containeranalysis.NoteIamPolicy`">`gcp.containeranalysis.NoteIamPolicy`</span>: Authoritative. Sets the IAM policy for the note and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-go="`containeranalysis.NoteIamBinding`" pulumi-lang-python="`containeranalysis.NoteIamBinding`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-java="`gcp.containeranalysis.NoteIamBinding`">`gcp.containeranalysis.NoteIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the note are preserved.
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-go="`containeranalysis.NoteIamMember`" pulumi-lang-python="`containeranalysis.NoteIamMember`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-java="`gcp.containeranalysis.NoteIamMember`">`gcp.containeranalysis.NoteIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the note are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-go="`containeranalysis.NoteIamPolicy`" pulumi-lang-python="`containeranalysis.NoteIamPolicy`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-java="`gcp.containeranalysis.NoteIamPolicy`">`gcp.containeranalysis.NoteIamPolicy`</span>: Retrieves the IAM policy for the note
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-go="`containeranalysis.NoteIamPolicy`" pulumi-lang-python="`containeranalysis.NoteIamPolicy`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamPolicy`" pulumi-lang-java="`gcp.containeranalysis.NoteIamPolicy`">`gcp.containeranalysis.NoteIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-go="`containeranalysis.NoteIamBinding`" pulumi-lang-python="`containeranalysis.NoteIamBinding`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-java="`gcp.containeranalysis.NoteIamBinding`">`gcp.containeranalysis.NoteIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-go="`containeranalysis.NoteIamMember`" pulumi-lang-python="`containeranalysis.NoteIamMember`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-java="`gcp.containeranalysis.NoteIamMember`">`gcp.containeranalysis.NoteIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-go="`containeranalysis.NoteIamBinding`" pulumi-lang-python="`containeranalysis.NoteIamBinding`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamBinding`" pulumi-lang-java="`gcp.containeranalysis.NoteIamBinding`">`gcp.containeranalysis.NoteIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-dotnet="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-go="`containeranalysis.NoteIamMember`" pulumi-lang-python="`containeranalysis.NoteIamMember`" pulumi-lang-yaml="`gcp.containeranalysis.NoteIamMember`" pulumi-lang-java="`gcp.containeranalysis.NoteIamMember`">`gcp.containeranalysis.NoteIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.containeranalysis.NoteIamPolicy
/// " pulumi-lang-dotnet=" gcp.containeranalysis.NoteIamPolicy
/// " pulumi-lang-go=" containeranalysis.NoteIamPolicy
/// " pulumi-lang-python=" containeranalysis.NoteIamPolicy
/// " pulumi-lang-yaml=" gcp.containeranalysis.NoteIamPolicy
/// " pulumi-lang-java=" gcp.containeranalysis.NoteIamPolicy
/// "> gcp.containeranalysis.NoteIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/containeranalysis.notes.occurrences.viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.containeranalysis.NoteIamPolicy("policy", {
/// project: note.project,
/// note: note.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/containeranalysis.notes.occurrences.viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.containeranalysis.NoteIamPolicy("policy",
/// project=note["project"],
/// note=note["name"],
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
/// Role = "roles/containeranalysis.notes.occurrences.viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.ContainerAnalysis.NoteIamPolicy("policy", new()
/// {
/// Project = note.Project,
/// Note = note.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/containeranalysis.notes.occurrences.viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = containeranalysis.NewNoteIamPolicy(ctx, "policy", &containeranalysis.NoteIamPolicyArgs{
/// Project:    pulumi.Any(note.Project),
/// Note:       pulumi.Any(note.Name),
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
/// import com.pulumi.gcp.containeranalysis.NoteIamPolicy;
/// import com.pulumi.gcp.containeranalysis.NoteIamPolicyArgs;
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
/// .role("roles/containeranalysis.notes.occurrences.viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new NoteIamPolicy("policy", NoteIamPolicyArgs.builder()
/// .project(note.project())
/// .note(note.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:containeranalysis:NoteIamPolicy
/// properties:
/// project: ${note.project}
/// note: ${note.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/containeranalysis.notes.occurrences.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.containeranalysis.NoteIamBinding
/// " pulumi-lang-dotnet=" gcp.containeranalysis.NoteIamBinding
/// " pulumi-lang-go=" containeranalysis.NoteIamBinding
/// " pulumi-lang-python=" containeranalysis.NoteIamBinding
/// " pulumi-lang-yaml=" gcp.containeranalysis.NoteIamBinding
/// " pulumi-lang-java=" gcp.containeranalysis.NoteIamBinding
/// "> gcp.containeranalysis.NoteIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.containeranalysis.NoteIamBinding("binding", {
/// project: note.project,
/// note: note.name,
/// role: "roles/containeranalysis.notes.occurrences.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.containeranalysis.NoteIamBinding("binding",
/// project=note["project"],
/// note=note["name"],
/// role="roles/containeranalysis.notes.occurrences.viewer",
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
/// var binding = new Gcp.ContainerAnalysis.NoteIamBinding("binding", new()
/// {
/// Project = note.Project,
/// Note = note.Name,
/// Role = "roles/containeranalysis.notes.occurrences.viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := containeranalysis.NewNoteIamBinding(ctx, "binding", &containeranalysis.NoteIamBindingArgs{
/// Project: pulumi.Any(note.Project),
/// Note:    pulumi.Any(note.Name),
/// Role:    pulumi.String("roles/containeranalysis.notes.occurrences.viewer"),
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
/// import com.pulumi.gcp.containeranalysis.NoteIamBinding;
/// import com.pulumi.gcp.containeranalysis.NoteIamBindingArgs;
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
/// var binding = new NoteIamBinding("binding", NoteIamBindingArgs.builder()
/// .project(note.project())
/// .note(note.name())
/// .role("roles/containeranalysis.notes.occurrences.viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:containeranalysis:NoteIamBinding
/// properties:
/// project: ${note.project}
/// note: ${note.name}
/// role: roles/containeranalysis.notes.occurrences.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.containeranalysis.NoteIamMember
/// " pulumi-lang-dotnet=" gcp.containeranalysis.NoteIamMember
/// " pulumi-lang-go=" containeranalysis.NoteIamMember
/// " pulumi-lang-python=" containeranalysis.NoteIamMember
/// " pulumi-lang-yaml=" gcp.containeranalysis.NoteIamMember
/// " pulumi-lang-java=" gcp.containeranalysis.NoteIamMember
/// "> gcp.containeranalysis.NoteIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.containeranalysis.NoteIamMember("member", {
/// project: note.project,
/// note: note.name,
/// role: "roles/containeranalysis.notes.occurrences.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.containeranalysis.NoteIamMember("member",
/// project=note["project"],
/// note=note["name"],
/// role="roles/containeranalysis.notes.occurrences.viewer",
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
/// var member = new Gcp.ContainerAnalysis.NoteIamMember("member", new()
/// {
/// Project = note.Project,
/// Note = note.Name,
/// Role = "roles/containeranalysis.notes.occurrences.viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := containeranalysis.NewNoteIamMember(ctx, "member", &containeranalysis.NoteIamMemberArgs{
/// Project: pulumi.Any(note.Project),
/// Note:    pulumi.Any(note.Name),
/// Role:    pulumi.String("roles/containeranalysis.notes.occurrences.viewer"),
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
/// import com.pulumi.gcp.containeranalysis.NoteIamMember;
/// import com.pulumi.gcp.containeranalysis.NoteIamMemberArgs;
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
/// var member = new NoteIamMember("member", NoteIamMemberArgs.builder()
/// .project(note.project())
/// .note(note.name())
/// .role("roles/containeranalysis.notes.occurrences.viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:containeranalysis:NoteIamMember
/// properties:
/// project: ${note.project}
/// note: ${note.name}
/// role: roles/containeranalysis.notes.occurrences.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/notes/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Container Registry note IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/noteIamPolicy:NoteIamPolicy editor "projects/{{project}}/notes/{{note}} roles/containeranalysis.notes.occurrences.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/noteIamPolicy:NoteIamPolicy editor "projects/{{project}}/notes/{{note}} roles/containeranalysis.notes.occurrences.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/noteIamPolicy:NoteIamPolicy editor projects/{{project}}/notes/{{note}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class NoteIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> note;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  NoteIamPolicy(
    String name, {
    NoteIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:containeranalysis/noteIamPolicy:NoteIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.note = registerOutput<String>('note');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
