import 'package:pulumi/pulumi.dart';
import 'backup_plan_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Backup for GKE BackupPlan. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-go="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-python="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamPolicy`">`gcp.gkebackup.BackupPlanIamPolicy`</span>: Authoritative. Sets the IAM policy for the backupplan and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-go="`gkebackup.BackupPlanIamBinding`" pulumi-lang-python="`gkebackup.BackupPlanIamBinding`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamBinding`">`gcp.gkebackup.BackupPlanIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backupplan are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-go="`gkebackup.BackupPlanIamMember`" pulumi-lang-python="`gkebackup.BackupPlanIamMember`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamMember`">`gcp.gkebackup.BackupPlanIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backupplan are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-go="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-python="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamPolicy`">`gcp.gkebackup.BackupPlanIamPolicy`</span>: Retrieves the IAM policy for the backupplan
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-go="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-python="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamPolicy`">`gcp.gkebackup.BackupPlanIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-go="`gkebackup.BackupPlanIamBinding`" pulumi-lang-python="`gkebackup.BackupPlanIamBinding`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamBinding`">`gcp.gkebackup.BackupPlanIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-go="`gkebackup.BackupPlanIamMember`" pulumi-lang-python="`gkebackup.BackupPlanIamMember`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamMember`">`gcp.gkebackup.BackupPlanIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-go="`gkebackup.BackupPlanIamBinding`" pulumi-lang-python="`gkebackup.BackupPlanIamBinding`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamBinding`">`gcp.gkebackup.BackupPlanIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-go="`gkebackup.BackupPlanIamMember`" pulumi-lang-python="`gkebackup.BackupPlanIamMember`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamMember`">`gcp.gkebackup.BackupPlanIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-dotnet=" gcp.gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-go=" gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-python=" gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-yaml=" gcp.gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-java=" gcp.gkebackup.BackupPlanIamPolicy
/// "> gcp.gkebackup.BackupPlanIamPolicy
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
/// const policy = new gcp.gkebackup.BackupPlanIamPolicy("policy", {
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
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
/// policy = gcp.gkebackup.BackupPlanIamPolicy("policy",
/// project=basic["project"],
/// location=basic["location"],
/// name=basic["name"],
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
/// var policy = new Gcp.GkeBackup.BackupPlanIamPolicy("policy", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
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
/// _, err = gkebackup.NewBackupPlanIamPolicy(ctx, "policy", &gkebackup.BackupPlanIamPolicyArgs{
/// Project:    pulumi.Any(basic.Project),
/// Location:   pulumi.Any(basic.Location),
/// Name:       pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicy;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicyArgs;
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
/// var policy = new BackupPlanIamPolicy("policy", BackupPlanIamPolicyArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gkebackup:BackupPlanIamPolicy
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.gkebackup.BackupPlanIamBinding
/// " pulumi-lang-dotnet=" gcp.gkebackup.BackupPlanIamBinding
/// " pulumi-lang-go=" gkebackup.BackupPlanIamBinding
/// " pulumi-lang-python=" gkebackup.BackupPlanIamBinding
/// " pulumi-lang-yaml=" gcp.gkebackup.BackupPlanIamBinding
/// " pulumi-lang-java=" gcp.gkebackup.BackupPlanIamBinding
/// "> gcp.gkebackup.BackupPlanIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkebackup.BackupPlanIamBinding("binding", {
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkebackup.BackupPlanIamBinding("binding",
/// project=basic["project"],
/// location=basic["location"],
/// name=basic["name"],
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
/// var binding = new Gcp.GkeBackup.BackupPlanIamBinding("binding", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkebackup.NewBackupPlanIamBinding(ctx, "binding", &gkebackup.BackupPlanIamBindingArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// Name:     pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBinding;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBindingArgs;
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
/// var binding = new BackupPlanIamBinding("binding", BackupPlanIamBindingArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
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
/// type: gcp:gkebackup:BackupPlanIamBinding
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gkebackup.BackupPlanIamMember
/// " pulumi-lang-dotnet=" gcp.gkebackup.BackupPlanIamMember
/// " pulumi-lang-go=" gkebackup.BackupPlanIamMember
/// " pulumi-lang-python=" gkebackup.BackupPlanIamMember
/// " pulumi-lang-yaml=" gcp.gkebackup.BackupPlanIamMember
/// " pulumi-lang-java=" gcp.gkebackup.BackupPlanIamMember
/// "> gcp.gkebackup.BackupPlanIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkebackup.BackupPlanIamMember("member", {
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkebackup.BackupPlanIamMember("member",
/// project=basic["project"],
/// location=basic["location"],
/// name=basic["name"],
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
/// var member = new Gcp.GkeBackup.BackupPlanIamMember("member", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkebackup.NewBackupPlanIamMember(ctx, "member", &gkebackup.BackupPlanIamMemberArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// Name:     pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMember;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMemberArgs;
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
/// var member = new BackupPlanIamMember("member", BackupPlanIamMemberArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
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
/// type: gcp:gkebackup:BackupPlanIamMember
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
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
/// # IAM policy for Backup for GKE BackupPlan
///
/// Three different resources help you manage your IAM policy for Backup for GKE BackupPlan. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-go="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-python="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamPolicy`">`gcp.gkebackup.BackupPlanIamPolicy`</span>: Authoritative. Sets the IAM policy for the backupplan and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-go="`gkebackup.BackupPlanIamBinding`" pulumi-lang-python="`gkebackup.BackupPlanIamBinding`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamBinding`">`gcp.gkebackup.BackupPlanIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backupplan are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-go="`gkebackup.BackupPlanIamMember`" pulumi-lang-python="`gkebackup.BackupPlanIamMember`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamMember`">`gcp.gkebackup.BackupPlanIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backupplan are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-go="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-python="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamPolicy`">`gcp.gkebackup.BackupPlanIamPolicy`</span>: Retrieves the IAM policy for the backupplan
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-go="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-python="`gkebackup.BackupPlanIamPolicy`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamPolicy`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamPolicy`">`gcp.gkebackup.BackupPlanIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-go="`gkebackup.BackupPlanIamBinding`" pulumi-lang-python="`gkebackup.BackupPlanIamBinding`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamBinding`">`gcp.gkebackup.BackupPlanIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-go="`gkebackup.BackupPlanIamMember`" pulumi-lang-python="`gkebackup.BackupPlanIamMember`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamMember`">`gcp.gkebackup.BackupPlanIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-go="`gkebackup.BackupPlanIamBinding`" pulumi-lang-python="`gkebackup.BackupPlanIamBinding`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamBinding`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamBinding`">`gcp.gkebackup.BackupPlanIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-dotnet="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-go="`gkebackup.BackupPlanIamMember`" pulumi-lang-python="`gkebackup.BackupPlanIamMember`" pulumi-lang-yaml="`gcp.gkebackup.BackupPlanIamMember`" pulumi-lang-java="`gcp.gkebackup.BackupPlanIamMember`">`gcp.gkebackup.BackupPlanIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-dotnet=" gcp.gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-go=" gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-python=" gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-yaml=" gcp.gkebackup.BackupPlanIamPolicy
/// " pulumi-lang-java=" gcp.gkebackup.BackupPlanIamPolicy
/// "> gcp.gkebackup.BackupPlanIamPolicy
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
/// const policy = new gcp.gkebackup.BackupPlanIamPolicy("policy", {
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
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
/// policy = gcp.gkebackup.BackupPlanIamPolicy("policy",
/// project=basic["project"],
/// location=basic["location"],
/// name=basic["name"],
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
/// var policy = new Gcp.GkeBackup.BackupPlanIamPolicy("policy", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
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
/// _, err = gkebackup.NewBackupPlanIamPolicy(ctx, "policy", &gkebackup.BackupPlanIamPolicyArgs{
/// Project:    pulumi.Any(basic.Project),
/// Location:   pulumi.Any(basic.Location),
/// Name:       pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicy;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamPolicyArgs;
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
/// var policy = new BackupPlanIamPolicy("policy", BackupPlanIamPolicyArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gkebackup:BackupPlanIamPolicy
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.gkebackup.BackupPlanIamBinding
/// " pulumi-lang-dotnet=" gcp.gkebackup.BackupPlanIamBinding
/// " pulumi-lang-go=" gkebackup.BackupPlanIamBinding
/// " pulumi-lang-python=" gkebackup.BackupPlanIamBinding
/// " pulumi-lang-yaml=" gcp.gkebackup.BackupPlanIamBinding
/// " pulumi-lang-java=" gcp.gkebackup.BackupPlanIamBinding
/// "> gcp.gkebackup.BackupPlanIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkebackup.BackupPlanIamBinding("binding", {
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkebackup.BackupPlanIamBinding("binding",
/// project=basic["project"],
/// location=basic["location"],
/// name=basic["name"],
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
/// var binding = new Gcp.GkeBackup.BackupPlanIamBinding("binding", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkebackup.NewBackupPlanIamBinding(ctx, "binding", &gkebackup.BackupPlanIamBindingArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// Name:     pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBinding;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamBindingArgs;
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
/// var binding = new BackupPlanIamBinding("binding", BackupPlanIamBindingArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
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
/// type: gcp:gkebackup:BackupPlanIamBinding
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gkebackup.BackupPlanIamMember
/// " pulumi-lang-dotnet=" gcp.gkebackup.BackupPlanIamMember
/// " pulumi-lang-go=" gkebackup.BackupPlanIamMember
/// " pulumi-lang-python=" gkebackup.BackupPlanIamMember
/// " pulumi-lang-yaml=" gcp.gkebackup.BackupPlanIamMember
/// " pulumi-lang-java=" gcp.gkebackup.BackupPlanIamMember
/// "> gcp.gkebackup.BackupPlanIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkebackup.BackupPlanIamMember("member", {
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkebackup.BackupPlanIamMember("member",
/// project=basic["project"],
/// location=basic["location"],
/// name=basic["name"],
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
/// var member = new Gcp.GkeBackup.BackupPlanIamMember("member", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkebackup.NewBackupPlanIamMember(ctx, "member", &gkebackup.BackupPlanIamMemberArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// Name:     pulumi.Any(basic.Name),
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
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMember;
/// import com.pulumi.gcp.gkebackup.BackupPlanIamMemberArgs;
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
/// var member = new BackupPlanIamMember("member", BackupPlanIamMemberArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
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
/// type: gcp:gkebackup:BackupPlanIamMember
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/backupPlans/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Backup for GKE backupplan IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy editor "projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy editor "projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy editor projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class BackupPlanIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The region of the Backup Plan.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  BackupPlanIamPolicy(
    String name, {
    BackupPlanIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/backupPlanIamPolicy:BackupPlanIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
