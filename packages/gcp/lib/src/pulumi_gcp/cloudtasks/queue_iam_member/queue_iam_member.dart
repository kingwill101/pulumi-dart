import 'package:pulumi/pulumi.dart';
import '../queue_iam_member_condition/queue_iam_member_condition.dart';
import 'queue_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Tasks Queue. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-go="`cloudtasks.QueueIamPolicy`" pulumi-lang-python="`cloudtasks.QueueIamPolicy`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-java="`gcp.cloudtasks.QueueIamPolicy`">`gcp.cloudtasks.QueueIamPolicy`</span>: Authoritative. Sets the IAM policy for the queue and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the queue are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-go="`cloudtasks.QueueIamMember`" pulumi-lang-python="`cloudtasks.QueueIamMember`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-java="`gcp.cloudtasks.QueueIamMember`">`gcp.cloudtasks.QueueIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the queue are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-go="`cloudtasks.QueueIamPolicy`" pulumi-lang-python="`cloudtasks.QueueIamPolicy`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-java="`gcp.cloudtasks.QueueIamPolicy`">`gcp.cloudtasks.QueueIamPolicy`</span>: Retrieves the IAM policy for the queue
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-go="`cloudtasks.QueueIamPolicy`" pulumi-lang-python="`cloudtasks.QueueIamPolicy`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-java="`gcp.cloudtasks.QueueIamPolicy`">`gcp.cloudtasks.QueueIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-go="`cloudtasks.QueueIamMember`" pulumi-lang-python="`cloudtasks.QueueIamMember`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-java="`gcp.cloudtasks.QueueIamMember`">`gcp.cloudtasks.QueueIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-go="`cloudtasks.QueueIamMember`" pulumi-lang-python="`cloudtasks.QueueIamMember`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-java="`gcp.cloudtasks.QueueIamMember`">`gcp.cloudtasks.QueueIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudtasks.QueueIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudtasks.QueueIamPolicy
/// " pulumi-lang-go=" cloudtasks.QueueIamPolicy
/// " pulumi-lang-python=" cloudtasks.QueueIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudtasks.QueueIamPolicy
/// " pulumi-lang-java=" gcp.cloudtasks.QueueIamPolicy
/// "> gcp.cloudtasks.QueueIamPolicy
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
/// const policy = new gcp.cloudtasks.QueueIamPolicy("policy", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
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
/// policy = gcp.cloudtasks.QueueIamPolicy("policy",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var policy = new Gcp.CloudTasks.QueueIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
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
/// _, err = cloudtasks.NewQueueIamPolicy(ctx, "policy", &cloudtasks.QueueIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Location:   pulumi.Any(_default.Location),
/// Name:       pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudtasks.QueueIamPolicy;
/// import com.pulumi.gcp.cloudtasks.QueueIamPolicyArgs;
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
/// var policy = new QueueIamPolicy("policy", QueueIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudtasks:QueueIamPolicy
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudtasks.QueueIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudtasks.QueueIamBinding
/// " pulumi-lang-go=" cloudtasks.QueueIamBinding
/// " pulumi-lang-python=" cloudtasks.QueueIamBinding
/// " pulumi-lang-yaml=" gcp.cloudtasks.QueueIamBinding
/// " pulumi-lang-java=" gcp.cloudtasks.QueueIamBinding
/// "> gcp.cloudtasks.QueueIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudtasks.QueueIamBinding("binding", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudtasks.QueueIamBinding("binding",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var binding = new Gcp.CloudTasks.QueueIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudtasks.NewQueueIamBinding(ctx, "binding", &cloudtasks.QueueIamBindingArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudtasks.QueueIamBinding;
/// import com.pulumi.gcp.cloudtasks.QueueIamBindingArgs;
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
/// var binding = new QueueIamBinding("binding", QueueIamBindingArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudtasks:QueueIamBinding
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudtasks.QueueIamMember
/// " pulumi-lang-dotnet=" gcp.cloudtasks.QueueIamMember
/// " pulumi-lang-go=" cloudtasks.QueueIamMember
/// " pulumi-lang-python=" cloudtasks.QueueIamMember
/// " pulumi-lang-yaml=" gcp.cloudtasks.QueueIamMember
/// " pulumi-lang-java=" gcp.cloudtasks.QueueIamMember
/// "> gcp.cloudtasks.QueueIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudtasks.QueueIamMember("member", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudtasks.QueueIamMember("member",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var member = new Gcp.CloudTasks.QueueIamMember("member", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudtasks.NewQueueIamMember(ctx, "member", &cloudtasks.QueueIamMemberArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudtasks.QueueIamMember;
/// import com.pulumi.gcp.cloudtasks.QueueIamMemberArgs;
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
/// var member = new QueueIamMember("member", QueueIamMemberArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudtasks:QueueIamMember
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
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
/// # IAM policy for Cloud Tasks Queue
///
/// Three different resources help you manage your IAM policy for Cloud Tasks Queue. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-go="`cloudtasks.QueueIamPolicy`" pulumi-lang-python="`cloudtasks.QueueIamPolicy`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-java="`gcp.cloudtasks.QueueIamPolicy`">`gcp.cloudtasks.QueueIamPolicy`</span>: Authoritative. Sets the IAM policy for the queue and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the queue are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-go="`cloudtasks.QueueIamMember`" pulumi-lang-python="`cloudtasks.QueueIamMember`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-java="`gcp.cloudtasks.QueueIamMember`">`gcp.cloudtasks.QueueIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the queue are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-go="`cloudtasks.QueueIamPolicy`" pulumi-lang-python="`cloudtasks.QueueIamPolicy`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-java="`gcp.cloudtasks.QueueIamPolicy`">`gcp.cloudtasks.QueueIamPolicy`</span>: Retrieves the IAM policy for the queue
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-go="`cloudtasks.QueueIamPolicy`" pulumi-lang-python="`cloudtasks.QueueIamPolicy`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamPolicy`" pulumi-lang-java="`gcp.cloudtasks.QueueIamPolicy`">`gcp.cloudtasks.QueueIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-go="`cloudtasks.QueueIamMember`" pulumi-lang-python="`cloudtasks.QueueIamMember`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-java="`gcp.cloudtasks.QueueIamMember`">`gcp.cloudtasks.QueueIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-go="`cloudtasks.QueueIamMember`" pulumi-lang-python="`cloudtasks.QueueIamMember`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamMember`" pulumi-lang-java="`gcp.cloudtasks.QueueIamMember`">`gcp.cloudtasks.QueueIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudtasks.QueueIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudtasks.QueueIamPolicy
/// " pulumi-lang-go=" cloudtasks.QueueIamPolicy
/// " pulumi-lang-python=" cloudtasks.QueueIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudtasks.QueueIamPolicy
/// " pulumi-lang-java=" gcp.cloudtasks.QueueIamPolicy
/// "> gcp.cloudtasks.QueueIamPolicy
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
/// const policy = new gcp.cloudtasks.QueueIamPolicy("policy", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
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
/// policy = gcp.cloudtasks.QueueIamPolicy("policy",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var policy = new Gcp.CloudTasks.QueueIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
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
/// _, err = cloudtasks.NewQueueIamPolicy(ctx, "policy", &cloudtasks.QueueIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Location:   pulumi.Any(_default.Location),
/// Name:       pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudtasks.QueueIamPolicy;
/// import com.pulumi.gcp.cloudtasks.QueueIamPolicyArgs;
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
/// var policy = new QueueIamPolicy("policy", QueueIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudtasks:QueueIamPolicy
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudtasks.QueueIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudtasks.QueueIamBinding
/// " pulumi-lang-go=" cloudtasks.QueueIamBinding
/// " pulumi-lang-python=" cloudtasks.QueueIamBinding
/// " pulumi-lang-yaml=" gcp.cloudtasks.QueueIamBinding
/// " pulumi-lang-java=" gcp.cloudtasks.QueueIamBinding
/// "> gcp.cloudtasks.QueueIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudtasks.QueueIamBinding("binding", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudtasks.QueueIamBinding("binding",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var binding = new Gcp.CloudTasks.QueueIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudtasks.NewQueueIamBinding(ctx, "binding", &cloudtasks.QueueIamBindingArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudtasks.QueueIamBinding;
/// import com.pulumi.gcp.cloudtasks.QueueIamBindingArgs;
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
/// var binding = new QueueIamBinding("binding", QueueIamBindingArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudtasks:QueueIamBinding
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudtasks.QueueIamMember
/// " pulumi-lang-dotnet=" gcp.cloudtasks.QueueIamMember
/// " pulumi-lang-go=" cloudtasks.QueueIamMember
/// " pulumi-lang-python=" cloudtasks.QueueIamMember
/// " pulumi-lang-yaml=" gcp.cloudtasks.QueueIamMember
/// " pulumi-lang-java=" gcp.cloudtasks.QueueIamMember
/// "> gcp.cloudtasks.QueueIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudtasks.QueueIamMember("member", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudtasks.QueueIamMember("member",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var member = new Gcp.CloudTasks.QueueIamMember("member", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudtasks.NewQueueIamMember(ctx, "member", &cloudtasks.QueueIamMemberArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudtasks.QueueIamMember;
/// import com.pulumi.gcp.cloudtasks.QueueIamMemberArgs;
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
/// var member = new QueueIamMember("member", QueueIamMemberArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudtasks:QueueIamMember
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/queues/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Tasks queue IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queueIamMember:QueueIamMember editor "projects/{{project}}/locations/{{location}}/queues/{{queue}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queueIamMember:QueueIamMember editor "projects/{{project}}/locations/{{location}}/queues/{{queue}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queueIamMember:QueueIamMember editor projects/{{project}}/locations/{{location}}/queues/{{queue}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class QueueIamMember extends CustomResource {
  late final Output<QueueIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the queue Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-dotnet="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-go="`cloudtasks.QueueIamBinding`" pulumi-lang-python="`cloudtasks.QueueIamBinding`" pulumi-lang-yaml="`gcp.cloudtasks.QueueIamBinding`" pulumi-lang-java="`gcp.cloudtasks.QueueIamBinding`">`gcp.cloudtasks.QueueIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  QueueIamMember(
    String name, {
    QueueIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudtasks/queueIamMember:QueueIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<QueueIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
