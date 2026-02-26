import 'package:pulumi/pulumi.dart';
import 'disk_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine Disk. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.DiskIamPolicy`" pulumi-lang-go="`compute.DiskIamPolicy`" pulumi-lang-python="`compute.DiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.DiskIamPolicy`" pulumi-lang-java="`gcp.compute.DiskIamPolicy`">`gcp.compute.DiskIamPolicy`</span>: Authoritative. Sets the IAM policy for the disk and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.DiskIamBinding`" pulumi-lang-go="`compute.DiskIamBinding`" pulumi-lang-python="`compute.DiskIamBinding`" pulumi-lang-yaml="`gcp.compute.DiskIamBinding`" pulumi-lang-java="`gcp.compute.DiskIamBinding`">`gcp.compute.DiskIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the disk are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamMember`" pulumi-lang-dotnet="`gcp.compute.DiskIamMember`" pulumi-lang-go="`compute.DiskIamMember`" pulumi-lang-python="`compute.DiskIamMember`" pulumi-lang-yaml="`gcp.compute.DiskIamMember`" pulumi-lang-java="`gcp.compute.DiskIamMember`">`gcp.compute.DiskIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the disk are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.DiskIamPolicy`" pulumi-lang-go="`compute.DiskIamPolicy`" pulumi-lang-python="`compute.DiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.DiskIamPolicy`" pulumi-lang-java="`gcp.compute.DiskIamPolicy`">`gcp.compute.DiskIamPolicy`</span>: Retrieves the IAM policy for the disk
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.DiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.DiskIamPolicy`" pulumi-lang-go="`compute.DiskIamPolicy`" pulumi-lang-python="`compute.DiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.DiskIamPolicy`" pulumi-lang-java="`gcp.compute.DiskIamPolicy`">`gcp.compute.DiskIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.DiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.DiskIamBinding`" pulumi-lang-go="`compute.DiskIamBinding`" pulumi-lang-python="`compute.DiskIamBinding`" pulumi-lang-yaml="`gcp.compute.DiskIamBinding`" pulumi-lang-java="`gcp.compute.DiskIamBinding`">`gcp.compute.DiskIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.DiskIamMember`" pulumi-lang-dotnet="`gcp.compute.DiskIamMember`" pulumi-lang-go="`compute.DiskIamMember`" pulumi-lang-python="`compute.DiskIamMember`" pulumi-lang-yaml="`gcp.compute.DiskIamMember`" pulumi-lang-java="`gcp.compute.DiskIamMember`">`gcp.compute.DiskIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.DiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.DiskIamBinding`" pulumi-lang-go="`compute.DiskIamBinding`" pulumi-lang-python="`compute.DiskIamBinding`" pulumi-lang-yaml="`gcp.compute.DiskIamBinding`" pulumi-lang-java="`gcp.compute.DiskIamBinding`">`gcp.compute.DiskIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.DiskIamMember`" pulumi-lang-dotnet="`gcp.compute.DiskIamMember`" pulumi-lang-go="`compute.DiskIamMember`" pulumi-lang-python="`compute.DiskIamMember`" pulumi-lang-yaml="`gcp.compute.DiskIamMember`" pulumi-lang-java="`gcp.compute.DiskIamMember`">`gcp.compute.DiskIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.DiskIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.DiskIamPolicy
/// " pulumi-lang-go=" compute.DiskIamPolicy
/// " pulumi-lang-python=" compute.DiskIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.DiskIamPolicy
/// " pulumi-lang-java=" gcp.compute.DiskIamPolicy
/// "> gcp.compute.DiskIamPolicy
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
/// const policy = new gcp.compute.DiskIamPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
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
/// policy = gcp.compute.DiskIamPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
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
/// var policy = new Gcp.Compute.DiskIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// _, err = compute.NewDiskIamPolicy(ctx, "policy", &compute.DiskIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Zone:       pulumi.Any(_default.Zone),
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
/// import com.pulumi.gcp.compute.DiskIamPolicy;
/// import com.pulumi.gcp.compute.DiskIamPolicyArgs;
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
/// var policy = new DiskIamPolicy("policy", DiskIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:DiskIamPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.DiskIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.DiskIamBinding
/// " pulumi-lang-go=" compute.DiskIamBinding
/// " pulumi-lang-python=" compute.DiskIamBinding
/// " pulumi-lang-yaml=" gcp.compute.DiskIamBinding
/// " pulumi-lang-java=" gcp.compute.DiskIamBinding
/// "> gcp.compute.DiskIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.DiskIamBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.DiskIamBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
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
/// var binding = new Gcp.Compute.DiskIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewDiskIamBinding(ctx, "binding", &compute.DiskIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.compute.DiskIamBinding;
/// import com.pulumi.gcp.compute.DiskIamBindingArgs;
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
/// var binding = new DiskIamBinding("binding", DiskIamBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:DiskIamBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.DiskIamMember
/// " pulumi-lang-dotnet=" gcp.compute.DiskIamMember
/// " pulumi-lang-go=" compute.DiskIamMember
/// " pulumi-lang-python=" compute.DiskIamMember
/// " pulumi-lang-yaml=" gcp.compute.DiskIamMember
/// " pulumi-lang-java=" gcp.compute.DiskIamMember
/// "> gcp.compute.DiskIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.DiskIamMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.DiskIamMember("member",
/// project=default["project"],
/// zone=default["zone"],
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
/// var member = new Gcp.Compute.DiskIamMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewDiskIamMember(ctx, "member", &compute.DiskIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.compute.DiskIamMember;
/// import com.pulumi.gcp.compute.DiskIamMemberArgs;
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
/// var member = new DiskIamMember("member", DiskIamMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:DiskIamMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
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
/// # IAM policy for Compute Engine Disk
///
/// Three different resources help you manage your IAM policy for Compute Engine Disk. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.DiskIamPolicy`" pulumi-lang-go="`compute.DiskIamPolicy`" pulumi-lang-python="`compute.DiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.DiskIamPolicy`" pulumi-lang-java="`gcp.compute.DiskIamPolicy`">`gcp.compute.DiskIamPolicy`</span>: Authoritative. Sets the IAM policy for the disk and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.DiskIamBinding`" pulumi-lang-go="`compute.DiskIamBinding`" pulumi-lang-python="`compute.DiskIamBinding`" pulumi-lang-yaml="`gcp.compute.DiskIamBinding`" pulumi-lang-java="`gcp.compute.DiskIamBinding`">`gcp.compute.DiskIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the disk are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamMember`" pulumi-lang-dotnet="`gcp.compute.DiskIamMember`" pulumi-lang-go="`compute.DiskIamMember`" pulumi-lang-python="`compute.DiskIamMember`" pulumi-lang-yaml="`gcp.compute.DiskIamMember`" pulumi-lang-java="`gcp.compute.DiskIamMember`">`gcp.compute.DiskIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the disk are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.DiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.DiskIamPolicy`" pulumi-lang-go="`compute.DiskIamPolicy`" pulumi-lang-python="`compute.DiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.DiskIamPolicy`" pulumi-lang-java="`gcp.compute.DiskIamPolicy`">`gcp.compute.DiskIamPolicy`</span>: Retrieves the IAM policy for the disk
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.DiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.DiskIamPolicy`" pulumi-lang-go="`compute.DiskIamPolicy`" pulumi-lang-python="`compute.DiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.DiskIamPolicy`" pulumi-lang-java="`gcp.compute.DiskIamPolicy`">`gcp.compute.DiskIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.DiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.DiskIamBinding`" pulumi-lang-go="`compute.DiskIamBinding`" pulumi-lang-python="`compute.DiskIamBinding`" pulumi-lang-yaml="`gcp.compute.DiskIamBinding`" pulumi-lang-java="`gcp.compute.DiskIamBinding`">`gcp.compute.DiskIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.DiskIamMember`" pulumi-lang-dotnet="`gcp.compute.DiskIamMember`" pulumi-lang-go="`compute.DiskIamMember`" pulumi-lang-python="`compute.DiskIamMember`" pulumi-lang-yaml="`gcp.compute.DiskIamMember`" pulumi-lang-java="`gcp.compute.DiskIamMember`">`gcp.compute.DiskIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.DiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.DiskIamBinding`" pulumi-lang-go="`compute.DiskIamBinding`" pulumi-lang-python="`compute.DiskIamBinding`" pulumi-lang-yaml="`gcp.compute.DiskIamBinding`" pulumi-lang-java="`gcp.compute.DiskIamBinding`">`gcp.compute.DiskIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.DiskIamMember`" pulumi-lang-dotnet="`gcp.compute.DiskIamMember`" pulumi-lang-go="`compute.DiskIamMember`" pulumi-lang-python="`compute.DiskIamMember`" pulumi-lang-yaml="`gcp.compute.DiskIamMember`" pulumi-lang-java="`gcp.compute.DiskIamMember`">`gcp.compute.DiskIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.DiskIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.DiskIamPolicy
/// " pulumi-lang-go=" compute.DiskIamPolicy
/// " pulumi-lang-python=" compute.DiskIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.DiskIamPolicy
/// " pulumi-lang-java=" gcp.compute.DiskIamPolicy
/// "> gcp.compute.DiskIamPolicy
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
/// const policy = new gcp.compute.DiskIamPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
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
/// policy = gcp.compute.DiskIamPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
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
/// var policy = new Gcp.Compute.DiskIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// _, err = compute.NewDiskIamPolicy(ctx, "policy", &compute.DiskIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Zone:       pulumi.Any(_default.Zone),
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
/// import com.pulumi.gcp.compute.DiskIamPolicy;
/// import com.pulumi.gcp.compute.DiskIamPolicyArgs;
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
/// var policy = new DiskIamPolicy("policy", DiskIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:DiskIamPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.DiskIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.DiskIamBinding
/// " pulumi-lang-go=" compute.DiskIamBinding
/// " pulumi-lang-python=" compute.DiskIamBinding
/// " pulumi-lang-yaml=" gcp.compute.DiskIamBinding
/// " pulumi-lang-java=" gcp.compute.DiskIamBinding
/// "> gcp.compute.DiskIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.DiskIamBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.DiskIamBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
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
/// var binding = new Gcp.Compute.DiskIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewDiskIamBinding(ctx, "binding", &compute.DiskIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.compute.DiskIamBinding;
/// import com.pulumi.gcp.compute.DiskIamBindingArgs;
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
/// var binding = new DiskIamBinding("binding", DiskIamBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:DiskIamBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.DiskIamMember
/// " pulumi-lang-dotnet=" gcp.compute.DiskIamMember
/// " pulumi-lang-go=" compute.DiskIamMember
/// " pulumi-lang-python=" compute.DiskIamMember
/// " pulumi-lang-yaml=" gcp.compute.DiskIamMember
/// " pulumi-lang-java=" gcp.compute.DiskIamMember
/// "> gcp.compute.DiskIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.DiskIamMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.DiskIamMember("member",
/// project=default["project"],
/// zone=default["zone"],
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
/// var member = new Gcp.Compute.DiskIamMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewDiskIamMember(ctx, "member", &compute.DiskIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.compute.DiskIamMember;
/// import com.pulumi.gcp.compute.DiskIamMemberArgs;
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
/// var member = new DiskIamMember("member", DiskIamMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:DiskIamMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
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
/// * projects/{{project}}/zones/{{zone}}/disks/{{name}}
///
/// * {{project}}/{{zone}}/{{name}}
///
/// * {{zone}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine disk IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/diskIamPolicy:DiskIamPolicy editor "projects/{{project}}/zones/{{zone}}/disks/{{disk}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/diskIamPolicy:DiskIamPolicy editor "projects/{{project}}/zones/{{zone}}/disks/{{disk}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/diskIamPolicy:DiskIamPolicy editor projects/{{project}}/zones/{{zone}}/disks/{{disk}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DiskIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// A reference to the zone where the disk resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final Output<String> zone;

  DiskIamPolicy(
    String name, {
    DiskIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/diskIamPolicy:DiskIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
