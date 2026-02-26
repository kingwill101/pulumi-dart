import 'package:pulumi/pulumi.dart';
import '../region_disk_iam_member_condition/region_disk_iam_member_condition.dart';
import 'region_disk_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine RegionDisk. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-go="`compute.RegionDiskIamPolicy`" pulumi-lang-python="`compute.RegionDiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-java="`gcp.compute.RegionDiskIamPolicy`">`gcp.compute.RegionDiskIamPolicy`</span>: Authoritative. Sets the IAM policy for the regiondisk and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regiondisk are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamMember`" pulumi-lang-go="`compute.RegionDiskIamMember`" pulumi-lang-python="`compute.RegionDiskIamMember`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamMember`" pulumi-lang-java="`gcp.compute.RegionDiskIamMember`">`gcp.compute.RegionDiskIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regiondisk are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-go="`compute.RegionDiskIamPolicy`" pulumi-lang-python="`compute.RegionDiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-java="`gcp.compute.RegionDiskIamPolicy`">`gcp.compute.RegionDiskIamPolicy`</span>: Retrieves the IAM policy for the regiondisk
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-go="`compute.RegionDiskIamPolicy`" pulumi-lang-python="`compute.RegionDiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-java="`gcp.compute.RegionDiskIamPolicy`">`gcp.compute.RegionDiskIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamMember`" pulumi-lang-go="`compute.RegionDiskIamMember`" pulumi-lang-python="`compute.RegionDiskIamMember`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamMember`" pulumi-lang-java="`gcp.compute.RegionDiskIamMember`">`gcp.compute.RegionDiskIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamMember`" pulumi-lang-go="`compute.RegionDiskIamMember`" pulumi-lang-python="`compute.RegionDiskIamMember`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamMember`" pulumi-lang-java="`gcp.compute.RegionDiskIamMember`">`gcp.compute.RegionDiskIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionDiskIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.RegionDiskIamPolicy
/// " pulumi-lang-go=" compute.RegionDiskIamPolicy
/// " pulumi-lang-python=" compute.RegionDiskIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.RegionDiskIamPolicy
/// " pulumi-lang-java=" gcp.compute.RegionDiskIamPolicy
/// "> gcp.compute.RegionDiskIamPolicy
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
/// const policy = new gcp.compute.RegionDiskIamPolicy("policy", {
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
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
/// policy = gcp.compute.RegionDiskIamPolicy("policy",
/// project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"],
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
/// var policy = new Gcp.Compute.RegionDiskIamPolicy("policy", new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
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
/// _, err = compute.NewRegionDiskIamPolicy(ctx, "policy", &compute.RegionDiskIamPolicyArgs{
/// Project:    pulumi.Any(regiondisk.Project),
/// Region:     pulumi.Any(regiondisk.Region),
/// Name:       pulumi.Any(regiondisk.Name),
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
/// import com.pulumi.gcp.compute.RegionDiskIamPolicy;
/// import com.pulumi.gcp.compute.RegionDiskIamPolicyArgs;
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
/// var policy = new RegionDiskIamPolicy("policy", RegionDiskIamPolicyArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:RegionDiskIamPolicy
/// properties:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionDiskIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.RegionDiskIamBinding
/// " pulumi-lang-go=" compute.RegionDiskIamBinding
/// " pulumi-lang-python=" compute.RegionDiskIamBinding
/// " pulumi-lang-yaml=" gcp.compute.RegionDiskIamBinding
/// " pulumi-lang-java=" gcp.compute.RegionDiskIamBinding
/// "> gcp.compute.RegionDiskIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.RegionDiskIamBinding("binding", {
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.RegionDiskIamBinding("binding",
/// project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"],
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
/// var binding = new Gcp.Compute.RegionDiskIamBinding("binding", new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
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
/// _, err := compute.NewRegionDiskIamBinding(ctx, "binding", &compute.RegionDiskIamBindingArgs{
/// Project: pulumi.Any(regiondisk.Project),
/// Region:  pulumi.Any(regiondisk.Region),
/// Name:    pulumi.Any(regiondisk.Name),
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
/// import com.pulumi.gcp.compute.RegionDiskIamBinding;
/// import com.pulumi.gcp.compute.RegionDiskIamBindingArgs;
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
/// var binding = new RegionDiskIamBinding("binding", RegionDiskIamBindingArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
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
/// type: gcp:compute:RegionDiskIamBinding
/// properties:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionDiskIamMember
/// " pulumi-lang-dotnet=" gcp.compute.RegionDiskIamMember
/// " pulumi-lang-go=" compute.RegionDiskIamMember
/// " pulumi-lang-python=" compute.RegionDiskIamMember
/// " pulumi-lang-yaml=" gcp.compute.RegionDiskIamMember
/// " pulumi-lang-java=" gcp.compute.RegionDiskIamMember
/// "> gcp.compute.RegionDiskIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.RegionDiskIamMember("member", {
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.RegionDiskIamMember("member",
/// project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"],
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
/// var member = new Gcp.Compute.RegionDiskIamMember("member", new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
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
/// _, err := compute.NewRegionDiskIamMember(ctx, "member", &compute.RegionDiskIamMemberArgs{
/// Project: pulumi.Any(regiondisk.Project),
/// Region:  pulumi.Any(regiondisk.Region),
/// Name:    pulumi.Any(regiondisk.Name),
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
/// import com.pulumi.gcp.compute.RegionDiskIamMember;
/// import com.pulumi.gcp.compute.RegionDiskIamMemberArgs;
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
/// var member = new RegionDiskIamMember("member", RegionDiskIamMemberArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
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
/// type: gcp:compute:RegionDiskIamMember
/// properties:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
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
/// # IAM policy for Compute Engine RegionDisk
///
/// Three different resources help you manage your IAM policy for Compute Engine RegionDisk. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-go="`compute.RegionDiskIamPolicy`" pulumi-lang-python="`compute.RegionDiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-java="`gcp.compute.RegionDiskIamPolicy`">`gcp.compute.RegionDiskIamPolicy`</span>: Authoritative. Sets the IAM policy for the regiondisk and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regiondisk are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamMember`" pulumi-lang-go="`compute.RegionDiskIamMember`" pulumi-lang-python="`compute.RegionDiskIamMember`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamMember`" pulumi-lang-java="`gcp.compute.RegionDiskIamMember`">`gcp.compute.RegionDiskIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regiondisk are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-go="`compute.RegionDiskIamPolicy`" pulumi-lang-python="`compute.RegionDiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-java="`gcp.compute.RegionDiskIamPolicy`">`gcp.compute.RegionDiskIamPolicy`</span>: Retrieves the IAM policy for the regiondisk
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-go="`compute.RegionDiskIamPolicy`" pulumi-lang-python="`compute.RegionDiskIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamPolicy`" pulumi-lang-java="`gcp.compute.RegionDiskIamPolicy`">`gcp.compute.RegionDiskIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamMember`" pulumi-lang-go="`compute.RegionDiskIamMember`" pulumi-lang-python="`compute.RegionDiskIamMember`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamMember`" pulumi-lang-java="`gcp.compute.RegionDiskIamMember`">`gcp.compute.RegionDiskIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamMember`" pulumi-lang-go="`compute.RegionDiskIamMember`" pulumi-lang-python="`compute.RegionDiskIamMember`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamMember`" pulumi-lang-java="`gcp.compute.RegionDiskIamMember`">`gcp.compute.RegionDiskIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionDiskIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.RegionDiskIamPolicy
/// " pulumi-lang-go=" compute.RegionDiskIamPolicy
/// " pulumi-lang-python=" compute.RegionDiskIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.RegionDiskIamPolicy
/// " pulumi-lang-java=" gcp.compute.RegionDiskIamPolicy
/// "> gcp.compute.RegionDiskIamPolicy
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
/// const policy = new gcp.compute.RegionDiskIamPolicy("policy", {
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
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
/// policy = gcp.compute.RegionDiskIamPolicy("policy",
/// project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"],
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
/// var policy = new Gcp.Compute.RegionDiskIamPolicy("policy", new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
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
/// _, err = compute.NewRegionDiskIamPolicy(ctx, "policy", &compute.RegionDiskIamPolicyArgs{
/// Project:    pulumi.Any(regiondisk.Project),
/// Region:     pulumi.Any(regiondisk.Region),
/// Name:       pulumi.Any(regiondisk.Name),
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
/// import com.pulumi.gcp.compute.RegionDiskIamPolicy;
/// import com.pulumi.gcp.compute.RegionDiskIamPolicyArgs;
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
/// var policy = new RegionDiskIamPolicy("policy", RegionDiskIamPolicyArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:RegionDiskIamPolicy
/// properties:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionDiskIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.RegionDiskIamBinding
/// " pulumi-lang-go=" compute.RegionDiskIamBinding
/// " pulumi-lang-python=" compute.RegionDiskIamBinding
/// " pulumi-lang-yaml=" gcp.compute.RegionDiskIamBinding
/// " pulumi-lang-java=" gcp.compute.RegionDiskIamBinding
/// "> gcp.compute.RegionDiskIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.RegionDiskIamBinding("binding", {
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.RegionDiskIamBinding("binding",
/// project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"],
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
/// var binding = new Gcp.Compute.RegionDiskIamBinding("binding", new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
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
/// _, err := compute.NewRegionDiskIamBinding(ctx, "binding", &compute.RegionDiskIamBindingArgs{
/// Project: pulumi.Any(regiondisk.Project),
/// Region:  pulumi.Any(regiondisk.Region),
/// Name:    pulumi.Any(regiondisk.Name),
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
/// import com.pulumi.gcp.compute.RegionDiskIamBinding;
/// import com.pulumi.gcp.compute.RegionDiskIamBindingArgs;
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
/// var binding = new RegionDiskIamBinding("binding", RegionDiskIamBindingArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
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
/// type: gcp:compute:RegionDiskIamBinding
/// properties:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionDiskIamMember
/// " pulumi-lang-dotnet=" gcp.compute.RegionDiskIamMember
/// " pulumi-lang-go=" compute.RegionDiskIamMember
/// " pulumi-lang-python=" compute.RegionDiskIamMember
/// " pulumi-lang-yaml=" gcp.compute.RegionDiskIamMember
/// " pulumi-lang-java=" gcp.compute.RegionDiskIamMember
/// "> gcp.compute.RegionDiskIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.RegionDiskIamMember("member", {
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.RegionDiskIamMember("member",
/// project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"],
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
/// var member = new Gcp.Compute.RegionDiskIamMember("member", new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
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
/// _, err := compute.NewRegionDiskIamMember(ctx, "member", &compute.RegionDiskIamMemberArgs{
/// Project: pulumi.Any(regiondisk.Project),
/// Region:  pulumi.Any(regiondisk.Region),
/// Name:    pulumi.Any(regiondisk.Name),
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
/// import com.pulumi.gcp.compute.RegionDiskIamMember;
/// import com.pulumi.gcp.compute.RegionDiskIamMemberArgs;
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
/// var member = new RegionDiskIamMember("member", RegionDiskIamMemberArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
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
/// type: gcp:compute:RegionDiskIamMember
/// properties:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/regions/{{region}}/disks/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine regiondisk IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskIamMember:RegionDiskIamMember editor "projects/{{project}}/regions/{{region}}/disks/{{region_disk}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskIamMember:RegionDiskIamMember editor "projects/{{project}}/regions/{{region}}/disks/{{region_disk}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskIamMember:RegionDiskIamMember editor projects/{{project}}/regions/{{region}}/disks/{{region_disk}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RegionDiskIamMember extends CustomResource {
  late final Output<RegionDiskIamMemberCondition?> condition;

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
  late final Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// A reference to the region where the disk resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-go="`compute.RegionDiskIamBinding`" pulumi-lang-python="`compute.RegionDiskIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionDiskIamBinding`" pulumi-lang-java="`gcp.compute.RegionDiskIamBinding`">`gcp.compute.RegionDiskIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  RegionDiskIamMember(
    String name, {
    RegionDiskIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionDiskIamMember:RegionDiskIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<RegionDiskIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
