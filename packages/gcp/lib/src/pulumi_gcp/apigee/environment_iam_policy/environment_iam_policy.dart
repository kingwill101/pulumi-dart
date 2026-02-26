import 'package:pulumi/pulumi.dart';
import 'environment_iam_policy_args.dart';

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
/// $ pulumi import gcp:apigee/environmentIamPolicy:EnvironmentIamPolicy editor "{{org_id}}/environments/{{environment}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentIamPolicy:EnvironmentIamPolicy editor "{{org_id}}/environments/{{environment}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentIamPolicy:EnvironmentIamPolicy editor {{org_id}}/environments/{{environment}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EnvironmentIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> envId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> orgId;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  EnvironmentIamPolicy(
    String name, {
    EnvironmentIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentIamPolicy:EnvironmentIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.envId = registerOutput<String>('envId');
    this.etag = registerOutput<String>('etag');
    this.orgId = registerOutput<String>('orgId');
    this.policyData = registerOutput<String>('policyData');
  }
}
