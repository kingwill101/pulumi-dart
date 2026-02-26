import 'package:pulumi/pulumi.dart';
import 'task_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex Task. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-go="`dataplex.TaskIamPolicy`" pulumi-lang-python="`dataplex.TaskIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-java="`gcp.dataplex.TaskIamPolicy`">`gcp.dataplex.TaskIamPolicy`</span>: Authoritative. Sets the IAM policy for the task and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamBinding`" pulumi-lang-go="`dataplex.TaskIamBinding`" pulumi-lang-python="`dataplex.TaskIamBinding`" pulumi-lang-yaml="`gcp.dataplex.TaskIamBinding`" pulumi-lang-java="`gcp.dataplex.TaskIamBinding`">`gcp.dataplex.TaskIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the task are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamMember`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamMember`" pulumi-lang-go="`dataplex.TaskIamMember`" pulumi-lang-python="`dataplex.TaskIamMember`" pulumi-lang-yaml="`gcp.dataplex.TaskIamMember`" pulumi-lang-java="`gcp.dataplex.TaskIamMember`">`gcp.dataplex.TaskIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the task are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-go="`dataplex.TaskIamPolicy`" pulumi-lang-python="`dataplex.TaskIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-java="`gcp.dataplex.TaskIamPolicy`">`gcp.dataplex.TaskIamPolicy`</span>: Retrieves the IAM policy for the task
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-go="`dataplex.TaskIamPolicy`" pulumi-lang-python="`dataplex.TaskIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-java="`gcp.dataplex.TaskIamPolicy`">`gcp.dataplex.TaskIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamBinding`" pulumi-lang-go="`dataplex.TaskIamBinding`" pulumi-lang-python="`dataplex.TaskIamBinding`" pulumi-lang-yaml="`gcp.dataplex.TaskIamBinding`" pulumi-lang-java="`gcp.dataplex.TaskIamBinding`">`gcp.dataplex.TaskIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamMember`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamMember`" pulumi-lang-go="`dataplex.TaskIamMember`" pulumi-lang-python="`dataplex.TaskIamMember`" pulumi-lang-yaml="`gcp.dataplex.TaskIamMember`" pulumi-lang-java="`gcp.dataplex.TaskIamMember`">`gcp.dataplex.TaskIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamBinding`" pulumi-lang-go="`dataplex.TaskIamBinding`" pulumi-lang-python="`dataplex.TaskIamBinding`" pulumi-lang-yaml="`gcp.dataplex.TaskIamBinding`" pulumi-lang-java="`gcp.dataplex.TaskIamBinding`">`gcp.dataplex.TaskIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamMember`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamMember`" pulumi-lang-go="`dataplex.TaskIamMember`" pulumi-lang-python="`dataplex.TaskIamMember`" pulumi-lang-yaml="`gcp.dataplex.TaskIamMember`" pulumi-lang-java="`gcp.dataplex.TaskIamMember`">`gcp.dataplex.TaskIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.TaskIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.TaskIamPolicy
/// " pulumi-lang-go=" dataplex.TaskIamPolicy
/// " pulumi-lang-python=" dataplex.TaskIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.TaskIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.TaskIamPolicy
/// "> gcp.dataplex.TaskIamPolicy
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
/// const policy = new gcp.dataplex.TaskIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
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
/// policy = gcp.dataplex.TaskIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"],
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
/// var policy = new Gcp.DataPlex.TaskIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// _, err = dataplex.NewTaskIamPolicy(ctx, "policy", &dataplex.TaskIamPolicyArgs{
/// Project:    pulumi.Any(example.Project),
/// Location:   pulumi.Any(example.Location),
/// Lake:       pulumi.Any(example.Lake),
/// TaskId:     pulumi.Any(example.TaskId),
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
/// import com.pulumi.gcp.dataplex.TaskIamPolicy;
/// import com.pulumi.gcp.dataplex.TaskIamPolicyArgs;
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
/// var policy = new TaskIamPolicy("policy", TaskIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:TaskIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.TaskIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.TaskIamBinding
/// " pulumi-lang-go=" dataplex.TaskIamBinding
/// " pulumi-lang-python=" dataplex.TaskIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.TaskIamBinding
/// " pulumi-lang-java=" gcp.dataplex.TaskIamBinding
/// "> gcp.dataplex.TaskIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.TaskIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.TaskIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"],
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
/// var binding = new Gcp.DataPlex.TaskIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewTaskIamBinding(ctx, "binding", &dataplex.TaskIamBindingArgs{
/// Project:  pulumi.Any(example.Project),
/// Location: pulumi.Any(example.Location),
/// Lake:     pulumi.Any(example.Lake),
/// TaskId:   pulumi.Any(example.TaskId),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.TaskIamBinding;
/// import com.pulumi.gcp.dataplex.TaskIamBindingArgs;
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
/// var binding = new TaskIamBinding("binding", TaskIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
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
/// type: gcp:dataplex:TaskIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.TaskIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.TaskIamMember
/// " pulumi-lang-go=" dataplex.TaskIamMember
/// " pulumi-lang-python=" dataplex.TaskIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.TaskIamMember
/// " pulumi-lang-java=" gcp.dataplex.TaskIamMember
/// "> gcp.dataplex.TaskIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.TaskIamMember("member", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.TaskIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"],
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
/// var member = new Gcp.DataPlex.TaskIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewTaskIamMember(ctx, "member", &dataplex.TaskIamMemberArgs{
/// Project:  pulumi.Any(example.Project),
/// Location: pulumi.Any(example.Location),
/// Lake:     pulumi.Any(example.Lake),
/// TaskId:   pulumi.Any(example.TaskId),
/// Role:     pulumi.String("roles/viewer"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataplex.TaskIamMember;
/// import com.pulumi.gcp.dataplex.TaskIamMemberArgs;
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
/// var member = new TaskIamMember("member", TaskIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
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
/// type: gcp:dataplex:TaskIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
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
/// # IAM policy for Dataplex Task
///
/// Three different resources help you manage your IAM policy for Dataplex Task. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-go="`dataplex.TaskIamPolicy`" pulumi-lang-python="`dataplex.TaskIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-java="`gcp.dataplex.TaskIamPolicy`">`gcp.dataplex.TaskIamPolicy`</span>: Authoritative. Sets the IAM policy for the task and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamBinding`" pulumi-lang-go="`dataplex.TaskIamBinding`" pulumi-lang-python="`dataplex.TaskIamBinding`" pulumi-lang-yaml="`gcp.dataplex.TaskIamBinding`" pulumi-lang-java="`gcp.dataplex.TaskIamBinding`">`gcp.dataplex.TaskIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the task are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamMember`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamMember`" pulumi-lang-go="`dataplex.TaskIamMember`" pulumi-lang-python="`dataplex.TaskIamMember`" pulumi-lang-yaml="`gcp.dataplex.TaskIamMember`" pulumi-lang-java="`gcp.dataplex.TaskIamMember`">`gcp.dataplex.TaskIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the task are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-go="`dataplex.TaskIamPolicy`" pulumi-lang-python="`dataplex.TaskIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-java="`gcp.dataplex.TaskIamPolicy`">`gcp.dataplex.TaskIamPolicy`</span>: Retrieves the IAM policy for the task
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-go="`dataplex.TaskIamPolicy`" pulumi-lang-python="`dataplex.TaskIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.TaskIamPolicy`" pulumi-lang-java="`gcp.dataplex.TaskIamPolicy`">`gcp.dataplex.TaskIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamBinding`" pulumi-lang-go="`dataplex.TaskIamBinding`" pulumi-lang-python="`dataplex.TaskIamBinding`" pulumi-lang-yaml="`gcp.dataplex.TaskIamBinding`" pulumi-lang-java="`gcp.dataplex.TaskIamBinding`">`gcp.dataplex.TaskIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamMember`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamMember`" pulumi-lang-go="`dataplex.TaskIamMember`" pulumi-lang-python="`dataplex.TaskIamMember`" pulumi-lang-yaml="`gcp.dataplex.TaskIamMember`" pulumi-lang-java="`gcp.dataplex.TaskIamMember`">`gcp.dataplex.TaskIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamBinding`" pulumi-lang-go="`dataplex.TaskIamBinding`" pulumi-lang-python="`dataplex.TaskIamBinding`" pulumi-lang-yaml="`gcp.dataplex.TaskIamBinding`" pulumi-lang-java="`gcp.dataplex.TaskIamBinding`">`gcp.dataplex.TaskIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.TaskIamMember`" pulumi-lang-dotnet="`gcp.dataplex.TaskIamMember`" pulumi-lang-go="`dataplex.TaskIamMember`" pulumi-lang-python="`dataplex.TaskIamMember`" pulumi-lang-yaml="`gcp.dataplex.TaskIamMember`" pulumi-lang-java="`gcp.dataplex.TaskIamMember`">`gcp.dataplex.TaskIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.TaskIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.TaskIamPolicy
/// " pulumi-lang-go=" dataplex.TaskIamPolicy
/// " pulumi-lang-python=" dataplex.TaskIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.TaskIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.TaskIamPolicy
/// "> gcp.dataplex.TaskIamPolicy
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
/// const policy = new gcp.dataplex.TaskIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
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
/// policy = gcp.dataplex.TaskIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"],
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
/// var policy = new Gcp.DataPlex.TaskIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// _, err = dataplex.NewTaskIamPolicy(ctx, "policy", &dataplex.TaskIamPolicyArgs{
/// Project:    pulumi.Any(example.Project),
/// Location:   pulumi.Any(example.Location),
/// Lake:       pulumi.Any(example.Lake),
/// TaskId:     pulumi.Any(example.TaskId),
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
/// import com.pulumi.gcp.dataplex.TaskIamPolicy;
/// import com.pulumi.gcp.dataplex.TaskIamPolicyArgs;
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
/// var policy = new TaskIamPolicy("policy", TaskIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:TaskIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.TaskIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.TaskIamBinding
/// " pulumi-lang-go=" dataplex.TaskIamBinding
/// " pulumi-lang-python=" dataplex.TaskIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.TaskIamBinding
/// " pulumi-lang-java=" gcp.dataplex.TaskIamBinding
/// "> gcp.dataplex.TaskIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.TaskIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.TaskIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"],
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
/// var binding = new Gcp.DataPlex.TaskIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewTaskIamBinding(ctx, "binding", &dataplex.TaskIamBindingArgs{
/// Project:  pulumi.Any(example.Project),
/// Location: pulumi.Any(example.Location),
/// Lake:     pulumi.Any(example.Lake),
/// TaskId:   pulumi.Any(example.TaskId),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.TaskIamBinding;
/// import com.pulumi.gcp.dataplex.TaskIamBindingArgs;
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
/// var binding = new TaskIamBinding("binding", TaskIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
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
/// type: gcp:dataplex:TaskIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.TaskIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.TaskIamMember
/// " pulumi-lang-go=" dataplex.TaskIamMember
/// " pulumi-lang-python=" dataplex.TaskIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.TaskIamMember
/// " pulumi-lang-java=" gcp.dataplex.TaskIamMember
/// "> gcp.dataplex.TaskIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.TaskIamMember("member", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.TaskIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"],
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
/// var member = new Gcp.DataPlex.TaskIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewTaskIamMember(ctx, "member", &dataplex.TaskIamMemberArgs{
/// Project:  pulumi.Any(example.Project),
/// Location: pulumi.Any(example.Location),
/// Lake:     pulumi.Any(example.Lake),
/// TaskId:   pulumi.Any(example.TaskId),
/// Role:     pulumi.String("roles/viewer"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataplex.TaskIamMember;
/// import com.pulumi.gcp.dataplex.TaskIamMemberArgs;
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
/// var member = new TaskIamMember("member", TaskIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
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
/// type: gcp:dataplex:TaskIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}}
///
/// * {{project}}/{{location}}/{{lake}}/{{task_id}}
///
/// * {{location}}/{{lake}}/{{task_id}}
///
/// * {{task_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex task IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/taskIamPolicy:TaskIamPolicy editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/taskIamPolicy:TaskIamPolicy editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/taskIamPolicy:TaskIamPolicy editor projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TaskIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The lake in which the task will be created in.
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> lake;

  /// The location in which the task will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final Output<String> taskId;

  TaskIamPolicy(
    String name, {
    TaskIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/taskIamPolicy:TaskIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.lake = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.taskId = Output.createUnknown<String>();
  }
}
