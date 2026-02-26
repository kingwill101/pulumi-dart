import 'package:pulumi/pulumi.dart';
import '../environment_iam_member_condition/environment_iam_member_condition.dart';
import 'environment_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Apigee Environment. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-go="`apigee.EnvironmentIamPolicy`" pulumi-lang-python="`apigee.EnvironmentIamPolicy`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-java="`gcp.apigee.EnvironmentIamPolicy`">`gcp.apigee.EnvironmentIamPolicy`</span>: Authoritative. Sets the IAM policy for the environment and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the environment are preserved.
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-go="`apigee.EnvironmentIamMember`" pulumi-lang-python="`apigee.EnvironmentIamMember`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-java="`gcp.apigee.EnvironmentIamMember`">`gcp.apigee.EnvironmentIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the environment are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-go="`apigee.EnvironmentIamPolicy`" pulumi-lang-python="`apigee.EnvironmentIamPolicy`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-java="`gcp.apigee.EnvironmentIamPolicy`">`gcp.apigee.EnvironmentIamPolicy`</span>: Retrieves the IAM policy for the environment
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-go="`apigee.EnvironmentIamPolicy`" pulumi-lang-python="`apigee.EnvironmentIamPolicy`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-java="`gcp.apigee.EnvironmentIamPolicy`">`gcp.apigee.EnvironmentIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-go="`apigee.EnvironmentIamMember`" pulumi-lang-python="`apigee.EnvironmentIamMember`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-java="`gcp.apigee.EnvironmentIamMember`">`gcp.apigee.EnvironmentIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-go="`apigee.EnvironmentIamMember`" pulumi-lang-python="`apigee.EnvironmentIamMember`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-java="`gcp.apigee.EnvironmentIamMember`">`gcp.apigee.EnvironmentIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.apigee.EnvironmentIamPolicy
/// " pulumi-lang-dotnet=" gcp.apigee.EnvironmentIamPolicy
/// " pulumi-lang-go=" apigee.EnvironmentIamPolicy
/// " pulumi-lang-python=" apigee.EnvironmentIamPolicy
/// " pulumi-lang-yaml=" gcp.apigee.EnvironmentIamPolicy
/// " pulumi-lang-java=" gcp.apigee.EnvironmentIamPolicy
/// "> gcp.apigee.EnvironmentIamPolicy
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
/// const policy = new gcp.apigee.EnvironmentIamPolicy("policy", {
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
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
/// policy = gcp.apigee.EnvironmentIamPolicy("policy",
/// org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"],
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
/// var policy = new Gcp.Apigee.EnvironmentIamPolicy("policy", new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
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
/// _, err = apigee.NewEnvironmentIamPolicy(ctx, "policy", &apigee.EnvironmentIamPolicyArgs{
/// OrgId:      pulumi.Any(apigeeEnvironment.OrgId),
/// EnvId:      pulumi.Any(apigeeEnvironment.Name),
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
/// import com.pulumi.gcp.apigee.EnvironmentIamPolicy;
/// import com.pulumi.gcp.apigee.EnvironmentIamPolicyArgs;
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
/// var policy = new EnvironmentIamPolicy("policy", EnvironmentIamPolicyArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:apigee:EnvironmentIamPolicy
/// properties:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.apigee.EnvironmentIamBinding
/// " pulumi-lang-dotnet=" gcp.apigee.EnvironmentIamBinding
/// " pulumi-lang-go=" apigee.EnvironmentIamBinding
/// " pulumi-lang-python=" apigee.EnvironmentIamBinding
/// " pulumi-lang-yaml=" gcp.apigee.EnvironmentIamBinding
/// " pulumi-lang-java=" gcp.apigee.EnvironmentIamBinding
/// "> gcp.apigee.EnvironmentIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigee.EnvironmentIamBinding("binding", {
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigee.EnvironmentIamBinding("binding",
/// org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"],
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
/// var binding = new Gcp.Apigee.EnvironmentIamBinding("binding", new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.NewEnvironmentIamBinding(ctx, "binding", &apigee.EnvironmentIamBindingArgs{
/// OrgId: pulumi.Any(apigeeEnvironment.OrgId),
/// EnvId: pulumi.Any(apigeeEnvironment.Name),
/// Role:  pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.apigee.EnvironmentIamBinding;
/// import com.pulumi.gcp.apigee.EnvironmentIamBindingArgs;
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
/// var binding = new EnvironmentIamBinding("binding", EnvironmentIamBindingArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
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
/// type: gcp:apigee:EnvironmentIamBinding
/// properties:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigee.EnvironmentIamMember
/// " pulumi-lang-dotnet=" gcp.apigee.EnvironmentIamMember
/// " pulumi-lang-go=" apigee.EnvironmentIamMember
/// " pulumi-lang-python=" apigee.EnvironmentIamMember
/// " pulumi-lang-yaml=" gcp.apigee.EnvironmentIamMember
/// " pulumi-lang-java=" gcp.apigee.EnvironmentIamMember
/// "> gcp.apigee.EnvironmentIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigee.EnvironmentIamMember("member", {
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigee.EnvironmentIamMember("member",
/// org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"],
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
/// var member = new Gcp.Apigee.EnvironmentIamMember("member", new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.NewEnvironmentIamMember(ctx, "member", &apigee.EnvironmentIamMemberArgs{
/// OrgId:  pulumi.Any(apigeeEnvironment.OrgId),
/// EnvId:  pulumi.Any(apigeeEnvironment.Name),
/// Role:   pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.apigee.EnvironmentIamMember;
/// import com.pulumi.gcp.apigee.EnvironmentIamMemberArgs;
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
/// var member = new EnvironmentIamMember("member", EnvironmentIamMemberArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
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
/// type: gcp:apigee:EnvironmentIamMember
/// properties:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
/// role: roles/viewer
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
/// # IAM policy for Apigee Environment
///
/// Three different resources help you manage your IAM policy for Apigee Environment. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-go="`apigee.EnvironmentIamPolicy`" pulumi-lang-python="`apigee.EnvironmentIamPolicy`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-java="`gcp.apigee.EnvironmentIamPolicy`">`gcp.apigee.EnvironmentIamPolicy`</span>: Authoritative. Sets the IAM policy for the environment and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the environment are preserved.
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-go="`apigee.EnvironmentIamMember`" pulumi-lang-python="`apigee.EnvironmentIamMember`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-java="`gcp.apigee.EnvironmentIamMember`">`gcp.apigee.EnvironmentIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the environment are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-go="`apigee.EnvironmentIamPolicy`" pulumi-lang-python="`apigee.EnvironmentIamPolicy`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-java="`gcp.apigee.EnvironmentIamPolicy`">`gcp.apigee.EnvironmentIamPolicy`</span>: Retrieves the IAM policy for the environment
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-go="`apigee.EnvironmentIamPolicy`" pulumi-lang-python="`apigee.EnvironmentIamPolicy`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamPolicy`" pulumi-lang-java="`gcp.apigee.EnvironmentIamPolicy`">`gcp.apigee.EnvironmentIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-go="`apigee.EnvironmentIamMember`" pulumi-lang-python="`apigee.EnvironmentIamMember`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-java="`gcp.apigee.EnvironmentIamMember`">`gcp.apigee.EnvironmentIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-go="`apigee.EnvironmentIamMember`" pulumi-lang-python="`apigee.EnvironmentIamMember`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamMember`" pulumi-lang-java="`gcp.apigee.EnvironmentIamMember`">`gcp.apigee.EnvironmentIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.apigee.EnvironmentIamPolicy
/// " pulumi-lang-dotnet=" gcp.apigee.EnvironmentIamPolicy
/// " pulumi-lang-go=" apigee.EnvironmentIamPolicy
/// " pulumi-lang-python=" apigee.EnvironmentIamPolicy
/// " pulumi-lang-yaml=" gcp.apigee.EnvironmentIamPolicy
/// " pulumi-lang-java=" gcp.apigee.EnvironmentIamPolicy
/// "> gcp.apigee.EnvironmentIamPolicy
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
/// const policy = new gcp.apigee.EnvironmentIamPolicy("policy", {
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
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
/// policy = gcp.apigee.EnvironmentIamPolicy("policy",
/// org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"],
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
/// var policy = new Gcp.Apigee.EnvironmentIamPolicy("policy", new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
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
/// _, err = apigee.NewEnvironmentIamPolicy(ctx, "policy", &apigee.EnvironmentIamPolicyArgs{
/// OrgId:      pulumi.Any(apigeeEnvironment.OrgId),
/// EnvId:      pulumi.Any(apigeeEnvironment.Name),
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
/// import com.pulumi.gcp.apigee.EnvironmentIamPolicy;
/// import com.pulumi.gcp.apigee.EnvironmentIamPolicyArgs;
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
/// var policy = new EnvironmentIamPolicy("policy", EnvironmentIamPolicyArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:apigee:EnvironmentIamPolicy
/// properties:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.apigee.EnvironmentIamBinding
/// " pulumi-lang-dotnet=" gcp.apigee.EnvironmentIamBinding
/// " pulumi-lang-go=" apigee.EnvironmentIamBinding
/// " pulumi-lang-python=" apigee.EnvironmentIamBinding
/// " pulumi-lang-yaml=" gcp.apigee.EnvironmentIamBinding
/// " pulumi-lang-java=" gcp.apigee.EnvironmentIamBinding
/// "> gcp.apigee.EnvironmentIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigee.EnvironmentIamBinding("binding", {
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigee.EnvironmentIamBinding("binding",
/// org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"],
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
/// var binding = new Gcp.Apigee.EnvironmentIamBinding("binding", new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.NewEnvironmentIamBinding(ctx, "binding", &apigee.EnvironmentIamBindingArgs{
/// OrgId: pulumi.Any(apigeeEnvironment.OrgId),
/// EnvId: pulumi.Any(apigeeEnvironment.Name),
/// Role:  pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.apigee.EnvironmentIamBinding;
/// import com.pulumi.gcp.apigee.EnvironmentIamBindingArgs;
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
/// var binding = new EnvironmentIamBinding("binding", EnvironmentIamBindingArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
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
/// type: gcp:apigee:EnvironmentIamBinding
/// properties:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigee.EnvironmentIamMember
/// " pulumi-lang-dotnet=" gcp.apigee.EnvironmentIamMember
/// " pulumi-lang-go=" apigee.EnvironmentIamMember
/// " pulumi-lang-python=" apigee.EnvironmentIamMember
/// " pulumi-lang-yaml=" gcp.apigee.EnvironmentIamMember
/// " pulumi-lang-java=" gcp.apigee.EnvironmentIamMember
/// "> gcp.apigee.EnvironmentIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigee.EnvironmentIamMember("member", {
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigee.EnvironmentIamMember("member",
/// org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"],
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
/// var member = new Gcp.Apigee.EnvironmentIamMember("member", new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.NewEnvironmentIamMember(ctx, "member", &apigee.EnvironmentIamMemberArgs{
/// OrgId:  pulumi.Any(apigeeEnvironment.OrgId),
/// EnvId:  pulumi.Any(apigeeEnvironment.Name),
/// Role:   pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.apigee.EnvironmentIamMember;
/// import com.pulumi.gcp.apigee.EnvironmentIamMemberArgs;
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
/// var member = new EnvironmentIamMember("member", EnvironmentIamMemberArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
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
/// type: gcp:apigee:EnvironmentIamMember
/// properties:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * {{org_id}}/environments/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Apigee environment IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentIamMember:EnvironmentIamMember editor "{{org_id}}/environments/{{environment}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentIamMember:EnvironmentIamMember editor "{{org_id}}/environments/{{environment}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentIamMember:EnvironmentIamMember editor {{org_id}}/environments/{{environment}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EnvironmentIamMember extends CustomResource {
  late final Output<EnvironmentIamMemberCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> envId;

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

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> orgId;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  EnvironmentIamMember(
    String name, {
    EnvironmentIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentIamMember:EnvironmentIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<EnvironmentIamMemberCondition?>('condition');
    this.envId = registerOutput<String>('envId');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.orgId = registerOutput<String>('orgId');
    this.role = registerOutput<String>('role');
  }
}
