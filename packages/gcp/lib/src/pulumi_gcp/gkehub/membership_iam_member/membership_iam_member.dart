import 'package:pulumi/pulumi.dart';
import '../membership_iam_member_condition/membership_iam_member_condition.dart';
import 'membership_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for GKEHub Membership. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-go="`gkehub.MembershipIamPolicy`" pulumi-lang-python="`gkehub.MembershipIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-java="`gcp.gkehub.MembershipIamPolicy`">`gcp.gkehub.MembershipIamPolicy`</span>: Authoritative. Sets the IAM policy for the membership and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the membership are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamMember`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamMember`" pulumi-lang-go="`gkehub.MembershipIamMember`" pulumi-lang-python="`gkehub.MembershipIamMember`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamMember`" pulumi-lang-java="`gcp.gkehub.MembershipIamMember`">`gcp.gkehub.MembershipIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the membership are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-go="`gkehub.MembershipIamPolicy`" pulumi-lang-python="`gkehub.MembershipIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-java="`gcp.gkehub.MembershipIamPolicy`">`gcp.gkehub.MembershipIamPolicy`</span>: Retrieves the IAM policy for the membership
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-go="`gkehub.MembershipIamPolicy`" pulumi-lang-python="`gkehub.MembershipIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-java="`gcp.gkehub.MembershipIamPolicy`">`gcp.gkehub.MembershipIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamMember`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamMember`" pulumi-lang-go="`gkehub.MembershipIamMember`" pulumi-lang-python="`gkehub.MembershipIamMember`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamMember`" pulumi-lang-java="`gcp.gkehub.MembershipIamMember`">`gcp.gkehub.MembershipIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamMember`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamMember`" pulumi-lang-go="`gkehub.MembershipIamMember`" pulumi-lang-python="`gkehub.MembershipIamMember`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamMember`" pulumi-lang-java="`gcp.gkehub.MembershipIamMember`">`gcp.gkehub.MembershipIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.MembershipIamPolicy
/// " pulumi-lang-dotnet=" gcp.gkehub.MembershipIamPolicy
/// " pulumi-lang-go=" gkehub.MembershipIamPolicy
/// " pulumi-lang-python=" gkehub.MembershipIamPolicy
/// " pulumi-lang-yaml=" gcp.gkehub.MembershipIamPolicy
/// " pulumi-lang-java=" gcp.gkehub.MembershipIamPolicy
/// "> gcp.gkehub.MembershipIamPolicy
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
/// const policy = new gcp.gkehub.MembershipIamPolicy("policy", {
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
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
/// policy = gcp.gkehub.MembershipIamPolicy("policy",
/// project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"],
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
/// var policy = new Gcp.GkeHub.MembershipIamPolicy("policy", new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
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
/// _, err = gkehub.NewMembershipIamPolicy(ctx, "policy", &gkehub.MembershipIamPolicyArgs{
/// Project:      pulumi.Any(membership.Project),
/// Location:     pulumi.Any(membership.Location),
/// MembershipId: pulumi.Any(membership.MembershipId),
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
/// import com.pulumi.gcp.gkehub.MembershipIamPolicy;
/// import com.pulumi.gcp.gkehub.MembershipIamPolicyArgs;
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
/// var policy = new MembershipIamPolicy("policy", MembershipIamPolicyArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gkehub:MembershipIamPolicy
/// properties:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
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
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.MembershipIamBinding
/// " pulumi-lang-dotnet=" gcp.gkehub.MembershipIamBinding
/// " pulumi-lang-go=" gkehub.MembershipIamBinding
/// " pulumi-lang-python=" gkehub.MembershipIamBinding
/// " pulumi-lang-yaml=" gcp.gkehub.MembershipIamBinding
/// " pulumi-lang-java=" gcp.gkehub.MembershipIamBinding
/// "> gcp.gkehub.MembershipIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkehub.MembershipIamBinding("binding", {
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkehub.MembershipIamBinding("binding",
/// project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"],
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
/// var binding = new Gcp.GkeHub.MembershipIamBinding("binding", new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewMembershipIamBinding(ctx, "binding", &gkehub.MembershipIamBindingArgs{
/// Project:      pulumi.Any(membership.Project),
/// Location:     pulumi.Any(membership.Location),
/// MembershipId: pulumi.Any(membership.MembershipId),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.MembershipIamBinding;
/// import com.pulumi.gcp.gkehub.MembershipIamBindingArgs;
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
/// var binding = new MembershipIamBinding("binding", MembershipIamBindingArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
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
/// type: gcp:gkehub:MembershipIamBinding
/// properties:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.MembershipIamMember
/// " pulumi-lang-dotnet=" gcp.gkehub.MembershipIamMember
/// " pulumi-lang-go=" gkehub.MembershipIamMember
/// " pulumi-lang-python=" gkehub.MembershipIamMember
/// " pulumi-lang-yaml=" gcp.gkehub.MembershipIamMember
/// " pulumi-lang-java=" gcp.gkehub.MembershipIamMember
/// "> gcp.gkehub.MembershipIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkehub.MembershipIamMember("member", {
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkehub.MembershipIamMember("member",
/// project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"],
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
/// var member = new Gcp.GkeHub.MembershipIamMember("member", new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewMembershipIamMember(ctx, "member", &gkehub.MembershipIamMemberArgs{
/// Project:      pulumi.Any(membership.Project),
/// Location:     pulumi.Any(membership.Location),
/// MembershipId: pulumi.Any(membership.MembershipId),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.MembershipIamMember;
/// import com.pulumi.gcp.gkehub.MembershipIamMemberArgs;
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
/// var member = new MembershipIamMember("member", MembershipIamMemberArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
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
/// type: gcp:gkehub:MembershipIamMember
/// properties:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
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
/// # IAM policy for GKEHub Membership
///
/// Three different resources help you manage your IAM policy for GKEHub Membership. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-go="`gkehub.MembershipIamPolicy`" pulumi-lang-python="`gkehub.MembershipIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-java="`gcp.gkehub.MembershipIamPolicy`">`gcp.gkehub.MembershipIamPolicy`</span>: Authoritative. Sets the IAM policy for the membership and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the membership are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamMember`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamMember`" pulumi-lang-go="`gkehub.MembershipIamMember`" pulumi-lang-python="`gkehub.MembershipIamMember`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamMember`" pulumi-lang-java="`gcp.gkehub.MembershipIamMember`">`gcp.gkehub.MembershipIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the membership are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-go="`gkehub.MembershipIamPolicy`" pulumi-lang-python="`gkehub.MembershipIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-java="`gcp.gkehub.MembershipIamPolicy`">`gcp.gkehub.MembershipIamPolicy`</span>: Retrieves the IAM policy for the membership
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-go="`gkehub.MembershipIamPolicy`" pulumi-lang-python="`gkehub.MembershipIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamPolicy`" pulumi-lang-java="`gcp.gkehub.MembershipIamPolicy`">`gcp.gkehub.MembershipIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamMember`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamMember`" pulumi-lang-go="`gkehub.MembershipIamMember`" pulumi-lang-python="`gkehub.MembershipIamMember`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamMember`" pulumi-lang-java="`gcp.gkehub.MembershipIamMember`">`gcp.gkehub.MembershipIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamMember`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamMember`" pulumi-lang-go="`gkehub.MembershipIamMember`" pulumi-lang-python="`gkehub.MembershipIamMember`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamMember`" pulumi-lang-java="`gcp.gkehub.MembershipIamMember`">`gcp.gkehub.MembershipIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.MembershipIamPolicy
/// " pulumi-lang-dotnet=" gcp.gkehub.MembershipIamPolicy
/// " pulumi-lang-go=" gkehub.MembershipIamPolicy
/// " pulumi-lang-python=" gkehub.MembershipIamPolicy
/// " pulumi-lang-yaml=" gcp.gkehub.MembershipIamPolicy
/// " pulumi-lang-java=" gcp.gkehub.MembershipIamPolicy
/// "> gcp.gkehub.MembershipIamPolicy
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
/// const policy = new gcp.gkehub.MembershipIamPolicy("policy", {
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
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
/// policy = gcp.gkehub.MembershipIamPolicy("policy",
/// project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"],
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
/// var policy = new Gcp.GkeHub.MembershipIamPolicy("policy", new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
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
/// _, err = gkehub.NewMembershipIamPolicy(ctx, "policy", &gkehub.MembershipIamPolicyArgs{
/// Project:      pulumi.Any(membership.Project),
/// Location:     pulumi.Any(membership.Location),
/// MembershipId: pulumi.Any(membership.MembershipId),
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
/// import com.pulumi.gcp.gkehub.MembershipIamPolicy;
/// import com.pulumi.gcp.gkehub.MembershipIamPolicyArgs;
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
/// var policy = new MembershipIamPolicy("policy", MembershipIamPolicyArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gkehub:MembershipIamPolicy
/// properties:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
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
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.MembershipIamBinding
/// " pulumi-lang-dotnet=" gcp.gkehub.MembershipIamBinding
/// " pulumi-lang-go=" gkehub.MembershipIamBinding
/// " pulumi-lang-python=" gkehub.MembershipIamBinding
/// " pulumi-lang-yaml=" gcp.gkehub.MembershipIamBinding
/// " pulumi-lang-java=" gcp.gkehub.MembershipIamBinding
/// "> gcp.gkehub.MembershipIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkehub.MembershipIamBinding("binding", {
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkehub.MembershipIamBinding("binding",
/// project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"],
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
/// var binding = new Gcp.GkeHub.MembershipIamBinding("binding", new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewMembershipIamBinding(ctx, "binding", &gkehub.MembershipIamBindingArgs{
/// Project:      pulumi.Any(membership.Project),
/// Location:     pulumi.Any(membership.Location),
/// MembershipId: pulumi.Any(membership.MembershipId),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.MembershipIamBinding;
/// import com.pulumi.gcp.gkehub.MembershipIamBindingArgs;
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
/// var binding = new MembershipIamBinding("binding", MembershipIamBindingArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
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
/// type: gcp:gkehub:MembershipIamBinding
/// properties:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.MembershipIamMember
/// " pulumi-lang-dotnet=" gcp.gkehub.MembershipIamMember
/// " pulumi-lang-go=" gkehub.MembershipIamMember
/// " pulumi-lang-python=" gkehub.MembershipIamMember
/// " pulumi-lang-yaml=" gcp.gkehub.MembershipIamMember
/// " pulumi-lang-java=" gcp.gkehub.MembershipIamMember
/// "> gcp.gkehub.MembershipIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkehub.MembershipIamMember("member", {
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkehub.MembershipIamMember("member",
/// project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"],
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
/// var member = new Gcp.GkeHub.MembershipIamMember("member", new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewMembershipIamMember(ctx, "member", &gkehub.MembershipIamMemberArgs{
/// Project:      pulumi.Any(membership.Project),
/// Location:     pulumi.Any(membership.Location),
/// MembershipId: pulumi.Any(membership.MembershipId),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.MembershipIamMember;
/// import com.pulumi.gcp.gkehub.MembershipIamMemberArgs;
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
/// var member = new MembershipIamMember("member", MembershipIamMemberArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
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
/// type: gcp:gkehub:MembershipIamMember
/// properties:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}
///
/// * {{project}}/{{location}}/{{membership_id}}
///
/// * {{location}}/{{membership_id}}
///
/// * {{membership_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// GKEHub membership IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipIamMember:MembershipIamMember editor "projects/{{project}}/locations/{{location}}/memberships/{{membership_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipIamMember:MembershipIamMember editor "projects/{{project}}/locations/{{location}}/memberships/{{membership_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipIamMember:MembershipIamMember editor projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MembershipIamMember extends CustomResource {
  late final Output<MembershipIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Location of the membership.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
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
  late final Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> membershipId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-go="`gkehub.MembershipIamBinding`" pulumi-lang-python="`gkehub.MembershipIamBinding`" pulumi-lang-yaml="`gcp.gkehub.MembershipIamBinding`" pulumi-lang-java="`gcp.gkehub.MembershipIamBinding`">`gcp.gkehub.MembershipIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  MembershipIamMember(
    String name, {
    MembershipIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipIamMember:MembershipIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<MembershipIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.membershipId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
