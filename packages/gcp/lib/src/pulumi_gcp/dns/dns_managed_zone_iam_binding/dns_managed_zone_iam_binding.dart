import 'package:pulumi/pulumi.dart';
import '../dns_managed_zone_iam_binding_condition/dns_managed_zone_iam_binding_condition.dart';
import 'dns_managed_zone_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Cloud DNS ManagedZone. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-go="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-python="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamPolicy`">`gcp.dns.DnsManagedZoneIamPolicy`</span>: Authoritative. Sets the IAM policy for the managedzone and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the managedzone are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-go="`dns.DnsManagedZoneIamMember`" pulumi-lang-python="`dns.DnsManagedZoneIamMember`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamMember`">`gcp.dns.DnsManagedZoneIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the managedzone are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-go="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-python="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamPolicy`">`gcp.dns.DnsManagedZoneIamPolicy`</span>: Retrieves the IAM policy for the managedzone
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-go="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-python="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamPolicy`">`gcp.dns.DnsManagedZoneIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-go="`dns.DnsManagedZoneIamMember`" pulumi-lang-python="`dns.DnsManagedZoneIamMember`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamMember`">`gcp.dns.DnsManagedZoneIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-go="`dns.DnsManagedZoneIamMember`" pulumi-lang-python="`dns.DnsManagedZoneIamMember`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamMember`">`gcp.dns.DnsManagedZoneIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-dotnet=" gcp.dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-go=" dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-python=" dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-yaml=" gcp.dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-java=" gcp.dns.DnsManagedZoneIamPolicy
/// "> gcp.dns.DnsManagedZoneIamPolicy
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
/// const policy = new gcp.dns.DnsManagedZoneIamPolicy("policy", {
/// project: _default.project,
/// managedZone: _default.name,
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
/// policy = gcp.dns.DnsManagedZoneIamPolicy("policy",
/// project=default["project"],
/// managed_zone=default["name"],
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
/// var policy = new Gcp.Dns.DnsManagedZoneIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
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
/// _, err = dns.NewDnsManagedZoneIamPolicy(ctx, "policy", &dns.DnsManagedZoneIamPolicyArgs{
/// Project:     pulumi.Any(_default.Project),
/// ManagedZone: pulumi.Any(_default.Name),
/// PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.dns.DnsManagedZoneIamPolicy;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamPolicyArgs;
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
/// var policy = new DnsManagedZoneIamPolicy("policy", DnsManagedZoneIamPolicyArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dns:DnsManagedZoneIamPolicy
/// properties:
/// project: ${default.project}
/// managedZone: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.dns.DnsManagedZoneIamBinding
/// " pulumi-lang-dotnet=" gcp.dns.DnsManagedZoneIamBinding
/// " pulumi-lang-go=" dns.DnsManagedZoneIamBinding
/// " pulumi-lang-python=" dns.DnsManagedZoneIamBinding
/// " pulumi-lang-yaml=" gcp.dns.DnsManagedZoneIamBinding
/// " pulumi-lang-java=" gcp.dns.DnsManagedZoneIamBinding
/// "> gcp.dns.DnsManagedZoneIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dns.DnsManagedZoneIamBinding("binding", {
/// project: _default.project,
/// managedZone: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dns.DnsManagedZoneIamBinding("binding",
/// project=default["project"],
/// managed_zone=default["name"],
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
/// var binding = new Gcp.Dns.DnsManagedZoneIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dns.NewDnsManagedZoneIamBinding(ctx, "binding", &dns.DnsManagedZoneIamBindingArgs{
/// Project:     pulumi.Any(_default.Project),
/// ManagedZone: pulumi.Any(_default.Name),
/// Role:        pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dns.DnsManagedZoneIamBinding;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamBindingArgs;
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
/// var binding = new DnsManagedZoneIamBinding("binding", DnsManagedZoneIamBindingArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
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
/// type: gcp:dns:DnsManagedZoneIamBinding
/// properties:
/// project: ${default.project}
/// managedZone: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dns.DnsManagedZoneIamMember
/// " pulumi-lang-dotnet=" gcp.dns.DnsManagedZoneIamMember
/// " pulumi-lang-go=" dns.DnsManagedZoneIamMember
/// " pulumi-lang-python=" dns.DnsManagedZoneIamMember
/// " pulumi-lang-yaml=" gcp.dns.DnsManagedZoneIamMember
/// " pulumi-lang-java=" gcp.dns.DnsManagedZoneIamMember
/// "> gcp.dns.DnsManagedZoneIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dns.DnsManagedZoneIamMember("member", {
/// project: _default.project,
/// managedZone: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dns.DnsManagedZoneIamMember("member",
/// project=default["project"],
/// managed_zone=default["name"],
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
/// var member = new Gcp.Dns.DnsManagedZoneIamMember("member", new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dns.NewDnsManagedZoneIamMember(ctx, "member", &dns.DnsManagedZoneIamMemberArgs{
/// Project:     pulumi.Any(_default.Project),
/// ManagedZone: pulumi.Any(_default.Name),
/// Role:        pulumi.String("roles/viewer"),
/// Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dns.DnsManagedZoneIamMember;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamMemberArgs;
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
/// var member = new DnsManagedZoneIamMember("member", DnsManagedZoneIamMemberArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
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
/// type: gcp:dns:DnsManagedZoneIamMember
/// properties:
/// project: ${default.project}
/// managedZone: ${default.name}
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
/// # IAM policy for Cloud DNS ManagedZone
///
/// Three different resources help you manage your IAM policy for Cloud DNS ManagedZone. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-go="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-python="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamPolicy`">`gcp.dns.DnsManagedZoneIamPolicy`</span>: Authoritative. Sets the IAM policy for the managedzone and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the managedzone are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-go="`dns.DnsManagedZoneIamMember`" pulumi-lang-python="`dns.DnsManagedZoneIamMember`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamMember`">`gcp.dns.DnsManagedZoneIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the managedzone are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-go="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-python="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamPolicy`">`gcp.dns.DnsManagedZoneIamPolicy`</span>: Retrieves the IAM policy for the managedzone
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-go="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-python="`dns.DnsManagedZoneIamPolicy`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamPolicy`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamPolicy`">`gcp.dns.DnsManagedZoneIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-go="`dns.DnsManagedZoneIamMember`" pulumi-lang-python="`dns.DnsManagedZoneIamMember`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamMember`">`gcp.dns.DnsManagedZoneIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-go="`dns.DnsManagedZoneIamMember`" pulumi-lang-python="`dns.DnsManagedZoneIamMember`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamMember`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamMember`">`gcp.dns.DnsManagedZoneIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-dotnet=" gcp.dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-go=" dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-python=" dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-yaml=" gcp.dns.DnsManagedZoneIamPolicy
/// " pulumi-lang-java=" gcp.dns.DnsManagedZoneIamPolicy
/// "> gcp.dns.DnsManagedZoneIamPolicy
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
/// const policy = new gcp.dns.DnsManagedZoneIamPolicy("policy", {
/// project: _default.project,
/// managedZone: _default.name,
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
/// policy = gcp.dns.DnsManagedZoneIamPolicy("policy",
/// project=default["project"],
/// managed_zone=default["name"],
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
/// var policy = new Gcp.Dns.DnsManagedZoneIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
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
/// _, err = dns.NewDnsManagedZoneIamPolicy(ctx, "policy", &dns.DnsManagedZoneIamPolicyArgs{
/// Project:     pulumi.Any(_default.Project),
/// ManagedZone: pulumi.Any(_default.Name),
/// PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.dns.DnsManagedZoneIamPolicy;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamPolicyArgs;
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
/// var policy = new DnsManagedZoneIamPolicy("policy", DnsManagedZoneIamPolicyArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dns:DnsManagedZoneIamPolicy
/// properties:
/// project: ${default.project}
/// managedZone: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.dns.DnsManagedZoneIamBinding
/// " pulumi-lang-dotnet=" gcp.dns.DnsManagedZoneIamBinding
/// " pulumi-lang-go=" dns.DnsManagedZoneIamBinding
/// " pulumi-lang-python=" dns.DnsManagedZoneIamBinding
/// " pulumi-lang-yaml=" gcp.dns.DnsManagedZoneIamBinding
/// " pulumi-lang-java=" gcp.dns.DnsManagedZoneIamBinding
/// "> gcp.dns.DnsManagedZoneIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dns.DnsManagedZoneIamBinding("binding", {
/// project: _default.project,
/// managedZone: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dns.DnsManagedZoneIamBinding("binding",
/// project=default["project"],
/// managed_zone=default["name"],
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
/// var binding = new Gcp.Dns.DnsManagedZoneIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dns.NewDnsManagedZoneIamBinding(ctx, "binding", &dns.DnsManagedZoneIamBindingArgs{
/// Project:     pulumi.Any(_default.Project),
/// ManagedZone: pulumi.Any(_default.Name),
/// Role:        pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dns.DnsManagedZoneIamBinding;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamBindingArgs;
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
/// var binding = new DnsManagedZoneIamBinding("binding", DnsManagedZoneIamBindingArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
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
/// type: gcp:dns:DnsManagedZoneIamBinding
/// properties:
/// project: ${default.project}
/// managedZone: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dns.DnsManagedZoneIamMember
/// " pulumi-lang-dotnet=" gcp.dns.DnsManagedZoneIamMember
/// " pulumi-lang-go=" dns.DnsManagedZoneIamMember
/// " pulumi-lang-python=" dns.DnsManagedZoneIamMember
/// " pulumi-lang-yaml=" gcp.dns.DnsManagedZoneIamMember
/// " pulumi-lang-java=" gcp.dns.DnsManagedZoneIamMember
/// "> gcp.dns.DnsManagedZoneIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dns.DnsManagedZoneIamMember("member", {
/// project: _default.project,
/// managedZone: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dns.DnsManagedZoneIamMember("member",
/// project=default["project"],
/// managed_zone=default["name"],
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
/// var member = new Gcp.Dns.DnsManagedZoneIamMember("member", new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dns.NewDnsManagedZoneIamMember(ctx, "member", &dns.DnsManagedZoneIamMemberArgs{
/// Project:     pulumi.Any(_default.Project),
/// ManagedZone: pulumi.Any(_default.Name),
/// Role:        pulumi.String("roles/viewer"),
/// Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dns.DnsManagedZoneIamMember;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamMemberArgs;
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
/// var member = new DnsManagedZoneIamMember("member", DnsManagedZoneIamMemberArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
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
/// type: gcp:dns:DnsManagedZoneIamMember
/// properties:
/// project: ${default.project}
/// managedZone: ${default.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/managedZones/{{managed_zone}}
///
/// * {{project}}/{{managed_zone}}
///
/// * {{managed_zone}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud DNS managedzone IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dns/dnsManagedZoneIamBinding:DnsManagedZoneIamBinding editor "projects/{{project}}/managedZones/{{managed_zone}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dns/dnsManagedZoneIamBinding:DnsManagedZoneIamBinding editor "projects/{{project}}/managedZones/{{managed_zone}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dns/dnsManagedZoneIamBinding:DnsManagedZoneIamBinding editor projects/{{project}}/managedZones/{{managed_zone}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DnsManagedZoneIamBinding extends CustomResource {
  late final Output<DnsManagedZoneIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> managedZone;

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

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-dotnet="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-go="`dns.DnsManagedZoneIamBinding`" pulumi-lang-python="`dns.DnsManagedZoneIamBinding`" pulumi-lang-yaml="`gcp.dns.DnsManagedZoneIamBinding`" pulumi-lang-java="`gcp.dns.DnsManagedZoneIamBinding`">`gcp.dns.DnsManagedZoneIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  DnsManagedZoneIamBinding(
    String name, {
    DnsManagedZoneIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dns/dnsManagedZoneIamBinding:DnsManagedZoneIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<DnsManagedZoneIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.managedZone = registerOutput<String>('managedZone');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
