import 'package:pulumi/pulumi.dart';
import 'access_policy_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Access Context Manager (VPC Service Controls) AccessPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamPolicy`">`gcp.accesscontextmanager.AccessPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the accesspolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamBinding`">`gcp.accesscontextmanager.AccessPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the accesspolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamMember`">`gcp.accesscontextmanager.AccessPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the accesspolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamPolicy`">`gcp.accesscontextmanager.AccessPolicyIamPolicy`</span>: Retrieves the IAM policy for the accesspolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamPolicy`">`gcp.accesscontextmanager.AccessPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamBinding`">`gcp.accesscontextmanager.AccessPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamMember`">`gcp.accesscontextmanager.AccessPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamBinding`">`gcp.accesscontextmanager.AccessPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamMember`">`gcp.accesscontextmanager.AccessPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-go=" accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-python=" accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-java=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// "> gcp.accesscontextmanager.AccessPolicyIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/accesscontextmanager.policyAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.accesscontextmanager.AccessPolicyIamPolicy("policy", {
/// name: access_policy.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/accesscontextmanager.policyAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.accesscontextmanager.AccessPolicyIamPolicy("policy",
/// name=access_policy["name"],
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
/// Role = "roles/accesscontextmanager.policyAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.AccessContextManager.AccessPolicyIamPolicy("policy", new()
/// {
/// Name = access_policy.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/accesscontextmanager.policyAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewAccessPolicyIamPolicy(ctx, "policy", &accesscontextmanager.AccessPolicyIamPolicyArgs{
/// Name:       pulumi.Any(access_policy.Name),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamPolicyArgs;
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
/// .role("roles/accesscontextmanager.policyAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new AccessPolicyIamPolicy("policy", AccessPolicyIamPolicyArgs.builder()
/// .name(access_policy.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:accesscontextmanager:AccessPolicyIamPolicy
/// properties:
/// name: ${["access-policy"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/accesscontextmanager.policyAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-go=" accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-python=" accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-java=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// "> gcp.accesscontextmanager.AccessPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.accesscontextmanager.AccessPolicyIamBinding("binding", {
/// name: access_policy.name,
/// role: "roles/accesscontextmanager.policyAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.accesscontextmanager.AccessPolicyIamBinding("binding",
/// name=access_policy["name"],
/// role="roles/accesscontextmanager.policyAdmin",
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
/// var binding = new Gcp.AccessContextManager.AccessPolicyIamBinding("binding", new()
/// {
/// Name = access_policy.Name,
/// Role = "roles/accesscontextmanager.policyAdmin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accesscontextmanager.NewAccessPolicyIamBinding(ctx, "binding", &accesscontextmanager.AccessPolicyIamBindingArgs{
/// Name: pulumi.Any(access_policy.Name),
/// Role: pulumi.String("roles/accesscontextmanager.policyAdmin"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamBinding;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamBindingArgs;
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
/// var binding = new AccessPolicyIamBinding("binding", AccessPolicyIamBindingArgs.builder()
/// .name(access_policy.name())
/// .role("roles/accesscontextmanager.policyAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:accesscontextmanager:AccessPolicyIamBinding
/// properties:
/// name: ${["access-policy"].name}
/// role: roles/accesscontextmanager.policyAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-go=" accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-python=" accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-yaml=" gcp.accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-java=" gcp.accesscontextmanager.AccessPolicyIamMember
/// "> gcp.accesscontextmanager.AccessPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.accesscontextmanager.AccessPolicyIamMember("member", {
/// name: access_policy.name,
/// role: "roles/accesscontextmanager.policyAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.accesscontextmanager.AccessPolicyIamMember("member",
/// name=access_policy["name"],
/// role="roles/accesscontextmanager.policyAdmin",
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
/// var member = new Gcp.AccessContextManager.AccessPolicyIamMember("member", new()
/// {
/// Name = access_policy.Name,
/// Role = "roles/accesscontextmanager.policyAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accesscontextmanager.NewAccessPolicyIamMember(ctx, "member", &accesscontextmanager.AccessPolicyIamMemberArgs{
/// Name:   pulumi.Any(access_policy.Name),
/// Role:   pulumi.String("roles/accesscontextmanager.policyAdmin"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamMember;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamMemberArgs;
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
/// var member = new AccessPolicyIamMember("member", AccessPolicyIamMemberArgs.builder()
/// .name(access_policy.name())
/// .role("roles/accesscontextmanager.policyAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:accesscontextmanager:AccessPolicyIamMember
/// properties:
/// name: ${["access-policy"].name}
/// role: roles/accesscontextmanager.policyAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Access Context Manager (VPC Service Controls) AccessPolicy
///
/// Three different resources help you manage your IAM policy for Access Context Manager (VPC Service Controls) AccessPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamPolicy`">`gcp.accesscontextmanager.AccessPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the accesspolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamBinding`">`gcp.accesscontextmanager.AccessPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the accesspolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamMember`">`gcp.accesscontextmanager.AccessPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the accesspolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamPolicy`">`gcp.accesscontextmanager.AccessPolicyIamPolicy`</span>: Retrieves the IAM policy for the accesspolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamPolicy`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamPolicy`">`gcp.accesscontextmanager.AccessPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamBinding`">`gcp.accesscontextmanager.AccessPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamMember`">`gcp.accesscontextmanager.AccessPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamBinding`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamBinding`">`gcp.accesscontextmanager.AccessPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-dotnet="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-go="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-python="`accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-yaml="`gcp.accesscontextmanager.AccessPolicyIamMember`" pulumi-lang-java="`gcp.accesscontextmanager.AccessPolicyIamMember`">`gcp.accesscontextmanager.AccessPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-go=" accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-python=" accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// " pulumi-lang-java=" gcp.accesscontextmanager.AccessPolicyIamPolicy
/// "> gcp.accesscontextmanager.AccessPolicyIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/accesscontextmanager.policyAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.accesscontextmanager.AccessPolicyIamPolicy("policy", {
/// name: access_policy.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/accesscontextmanager.policyAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.accesscontextmanager.AccessPolicyIamPolicy("policy",
/// name=access_policy["name"],
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
/// Role = "roles/accesscontextmanager.policyAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.AccessContextManager.AccessPolicyIamPolicy("policy", new()
/// {
/// Name = access_policy.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/accesscontextmanager.policyAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewAccessPolicyIamPolicy(ctx, "policy", &accesscontextmanager.AccessPolicyIamPolicyArgs{
/// Name:       pulumi.Any(access_policy.Name),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamPolicyArgs;
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
/// .role("roles/accesscontextmanager.policyAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new AccessPolicyIamPolicy("policy", AccessPolicyIamPolicyArgs.builder()
/// .name(access_policy.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:accesscontextmanager:AccessPolicyIamPolicy
/// properties:
/// name: ${["access-policy"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/accesscontextmanager.policyAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-go=" accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-python=" accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// " pulumi-lang-java=" gcp.accesscontextmanager.AccessPolicyIamBinding
/// "> gcp.accesscontextmanager.AccessPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.accesscontextmanager.AccessPolicyIamBinding("binding", {
/// name: access_policy.name,
/// role: "roles/accesscontextmanager.policyAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.accesscontextmanager.AccessPolicyIamBinding("binding",
/// name=access_policy["name"],
/// role="roles/accesscontextmanager.policyAdmin",
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
/// var binding = new Gcp.AccessContextManager.AccessPolicyIamBinding("binding", new()
/// {
/// Name = access_policy.Name,
/// Role = "roles/accesscontextmanager.policyAdmin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accesscontextmanager.NewAccessPolicyIamBinding(ctx, "binding", &accesscontextmanager.AccessPolicyIamBindingArgs{
/// Name: pulumi.Any(access_policy.Name),
/// Role: pulumi.String("roles/accesscontextmanager.policyAdmin"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamBinding;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamBindingArgs;
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
/// var binding = new AccessPolicyIamBinding("binding", AccessPolicyIamBindingArgs.builder()
/// .name(access_policy.name())
/// .role("roles/accesscontextmanager.policyAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:accesscontextmanager:AccessPolicyIamBinding
/// properties:
/// name: ${["access-policy"].name}
/// role: roles/accesscontextmanager.policyAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-go=" accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-python=" accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-yaml=" gcp.accesscontextmanager.AccessPolicyIamMember
/// " pulumi-lang-java=" gcp.accesscontextmanager.AccessPolicyIamMember
/// "> gcp.accesscontextmanager.AccessPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.accesscontextmanager.AccessPolicyIamMember("member", {
/// name: access_policy.name,
/// role: "roles/accesscontextmanager.policyAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.accesscontextmanager.AccessPolicyIamMember("member",
/// name=access_policy["name"],
/// role="roles/accesscontextmanager.policyAdmin",
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
/// var member = new Gcp.AccessContextManager.AccessPolicyIamMember("member", new()
/// {
/// Name = access_policy.Name,
/// Role = "roles/accesscontextmanager.policyAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accesscontextmanager.NewAccessPolicyIamMember(ctx, "member", &accesscontextmanager.AccessPolicyIamMemberArgs{
/// Name:   pulumi.Any(access_policy.Name),
/// Role:   pulumi.String("roles/accesscontextmanager.policyAdmin"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamMember;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyIamMemberArgs;
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
/// var member = new AccessPolicyIamMember("member", AccessPolicyIamMemberArgs.builder()
/// .name(access_policy.name())
/// .role("roles/accesscontextmanager.policyAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:accesscontextmanager:AccessPolicyIamMember
/// properties:
/// name: ${["access-policy"].name}
/// role: roles/accesscontextmanager.policyAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * accessPolicies/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Access Context Manager (VPC Service Controls) accesspolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessPolicyIamPolicy:AccessPolicyIamPolicy editor "accessPolicies/{{access_policy}} roles/accesscontextmanager.policyAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessPolicyIamPolicy:AccessPolicyIamPolicy editor "accessPolicies/{{access_policy}} roles/accesscontextmanager.policyAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessPolicyIamPolicy:AccessPolicyIamPolicy editor accessPolicies/{{access_policy}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AccessPolicyIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  AccessPolicyIamPolicy(
    String name, {
    AccessPolicyIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessPolicyIamPolicy:AccessPolicyIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
  }
}
