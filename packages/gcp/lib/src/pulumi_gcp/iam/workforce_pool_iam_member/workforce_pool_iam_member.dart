import 'package:pulumi/pulumi.dart';
import '../workforce_pool_iam_member_condition/workforce_pool_iam_member_condition.dart';
import 'workforce_pool_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Cloud IAM WorkforcePool. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-go="`iam.WorkforcePoolIamPolicy`" pulumi-lang-python="`iam.WorkforcePoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamPolicy`">`gcp.iam.WorkforcePoolIamPolicy`</span>: Authoritative. Sets the IAM policy for the workforcepool and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workforcepool are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-go="`iam.WorkforcePoolIamMember`" pulumi-lang-python="`iam.WorkforcePoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamMember`">`gcp.iam.WorkforcePoolIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workforcepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-go="`iam.WorkforcePoolIamPolicy`" pulumi-lang-python="`iam.WorkforcePoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamPolicy`">`gcp.iam.WorkforcePoolIamPolicy`</span>: Retrieves the IAM policy for the workforcepool
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-go="`iam.WorkforcePoolIamPolicy`" pulumi-lang-python="`iam.WorkforcePoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamPolicy`">`gcp.iam.WorkforcePoolIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-go="`iam.WorkforcePoolIamMember`" pulumi-lang-python="`iam.WorkforcePoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamMember`">`gcp.iam.WorkforcePoolIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-go="`iam.WorkforcePoolIamMember`" pulumi-lang-python="`iam.WorkforcePoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamMember`">`gcp.iam.WorkforcePoolIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkforcePoolIamPolicy
/// " pulumi-lang-dotnet=" gcp.iam.WorkforcePoolIamPolicy
/// " pulumi-lang-go=" iam.WorkforcePoolIamPolicy
/// " pulumi-lang-python=" iam.WorkforcePoolIamPolicy
/// " pulumi-lang-yaml=" gcp.iam.WorkforcePoolIamPolicy
/// " pulumi-lang-java=" gcp.iam.WorkforcePoolIamPolicy
/// "> gcp.iam.WorkforcePoolIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iam.workforcePoolAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iam.WorkforcePoolIamPolicy("policy", {
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iam.workforcePoolAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iam.WorkforcePoolIamPolicy("policy",
/// location=example["location"],
/// workforce_pool_id=example["workforcePoolId"],
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
/// Role = "roles/iam.workforcePoolAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iam.WorkforcePoolIamPolicy("policy", new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iam.workforcePoolAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkforcePoolIamPolicy(ctx, "policy", &iam.WorkforcePoolIamPolicyArgs{
/// Location:        pulumi.Any(example.Location),
/// WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// PolicyData:      pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicyArgs;
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
/// .role("roles/iam.workforcePoolAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WorkforcePoolIamPolicy("policy", WorkforcePoolIamPolicyArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iam:WorkforcePoolIamPolicy
/// properties:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iam.workforcePoolAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkforcePoolIamBinding
/// " pulumi-lang-dotnet=" gcp.iam.WorkforcePoolIamBinding
/// " pulumi-lang-go=" iam.WorkforcePoolIamBinding
/// " pulumi-lang-python=" iam.WorkforcePoolIamBinding
/// " pulumi-lang-yaml=" gcp.iam.WorkforcePoolIamBinding
/// " pulumi-lang-java=" gcp.iam.WorkforcePoolIamBinding
/// "> gcp.iam.WorkforcePoolIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iam.WorkforcePoolIamBinding("binding", {
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// role: "roles/iam.workforcePoolAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iam.WorkforcePoolIamBinding("binding",
/// location=example["location"],
/// workforce_pool_id=example["workforcePoolId"],
/// role="roles/iam.workforcePoolAdmin",
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
/// var binding = new Gcp.Iam.WorkforcePoolIamBinding("binding", new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
/// Role = "roles/iam.workforcePoolAdmin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkforcePoolIamBinding(ctx, "binding", &iam.WorkforcePoolIamBindingArgs{
/// Location:        pulumi.Any(example.Location),
/// WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamBinding;
/// import com.pulumi.gcp.iam.WorkforcePoolIamBindingArgs;
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
/// var binding = new WorkforcePoolIamBinding("binding", WorkforcePoolIamBindingArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .role("roles/iam.workforcePoolAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iam:WorkforcePoolIamBinding
/// properties:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// role: roles/iam.workforcePoolAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkforcePoolIamMember
/// " pulumi-lang-dotnet=" gcp.iam.WorkforcePoolIamMember
/// " pulumi-lang-go=" iam.WorkforcePoolIamMember
/// " pulumi-lang-python=" iam.WorkforcePoolIamMember
/// " pulumi-lang-yaml=" gcp.iam.WorkforcePoolIamMember
/// " pulumi-lang-java=" gcp.iam.WorkforcePoolIamMember
/// "> gcp.iam.WorkforcePoolIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iam.WorkforcePoolIamMember("member", {
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// role: "roles/iam.workforcePoolAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iam.WorkforcePoolIamMember("member",
/// location=example["location"],
/// workforce_pool_id=example["workforcePoolId"],
/// role="roles/iam.workforcePoolAdmin",
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
/// var member = new Gcp.Iam.WorkforcePoolIamMember("member", new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
/// Role = "roles/iam.workforcePoolAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkforcePoolIamMember(ctx, "member", &iam.WorkforcePoolIamMemberArgs{
/// Location:        pulumi.Any(example.Location),
/// WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
/// Member:          pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamMember;
/// import com.pulumi.gcp.iam.WorkforcePoolIamMemberArgs;
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
/// var member = new WorkforcePoolIamMember("member", WorkforcePoolIamMemberArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .role("roles/iam.workforcePoolAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iam:WorkforcePoolIamMember
/// properties:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// role: roles/iam.workforcePoolAdmin
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
/// # IAM policy for Cloud IAM WorkforcePool
///
/// Three different resources help you manage your IAM policy for Cloud IAM WorkforcePool. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-go="`iam.WorkforcePoolIamPolicy`" pulumi-lang-python="`iam.WorkforcePoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamPolicy`">`gcp.iam.WorkforcePoolIamPolicy`</span>: Authoritative. Sets the IAM policy for the workforcepool and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workforcepool are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-go="`iam.WorkforcePoolIamMember`" pulumi-lang-python="`iam.WorkforcePoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamMember`">`gcp.iam.WorkforcePoolIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workforcepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-go="`iam.WorkforcePoolIamPolicy`" pulumi-lang-python="`iam.WorkforcePoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamPolicy`">`gcp.iam.WorkforcePoolIamPolicy`</span>: Retrieves the IAM policy for the workforcepool
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-go="`iam.WorkforcePoolIamPolicy`" pulumi-lang-python="`iam.WorkforcePoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamPolicy`">`gcp.iam.WorkforcePoolIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-go="`iam.WorkforcePoolIamMember`" pulumi-lang-python="`iam.WorkforcePoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamMember`">`gcp.iam.WorkforcePoolIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-go="`iam.WorkforcePoolIamMember`" pulumi-lang-python="`iam.WorkforcePoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamMember`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamMember`">`gcp.iam.WorkforcePoolIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkforcePoolIamPolicy
/// " pulumi-lang-dotnet=" gcp.iam.WorkforcePoolIamPolicy
/// " pulumi-lang-go=" iam.WorkforcePoolIamPolicy
/// " pulumi-lang-python=" iam.WorkforcePoolIamPolicy
/// " pulumi-lang-yaml=" gcp.iam.WorkforcePoolIamPolicy
/// " pulumi-lang-java=" gcp.iam.WorkforcePoolIamPolicy
/// "> gcp.iam.WorkforcePoolIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iam.workforcePoolAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iam.WorkforcePoolIamPolicy("policy", {
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iam.workforcePoolAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iam.WorkforcePoolIamPolicy("policy",
/// location=example["location"],
/// workforce_pool_id=example["workforcePoolId"],
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
/// Role = "roles/iam.workforcePoolAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iam.WorkforcePoolIamPolicy("policy", new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iam.workforcePoolAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkforcePoolIamPolicy(ctx, "policy", &iam.WorkforcePoolIamPolicyArgs{
/// Location:        pulumi.Any(example.Location),
/// WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// PolicyData:      pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkforcePoolIamPolicyArgs;
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
/// .role("roles/iam.workforcePoolAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WorkforcePoolIamPolicy("policy", WorkforcePoolIamPolicyArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iam:WorkforcePoolIamPolicy
/// properties:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iam.workforcePoolAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkforcePoolIamBinding
/// " pulumi-lang-dotnet=" gcp.iam.WorkforcePoolIamBinding
/// " pulumi-lang-go=" iam.WorkforcePoolIamBinding
/// " pulumi-lang-python=" iam.WorkforcePoolIamBinding
/// " pulumi-lang-yaml=" gcp.iam.WorkforcePoolIamBinding
/// " pulumi-lang-java=" gcp.iam.WorkforcePoolIamBinding
/// "> gcp.iam.WorkforcePoolIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iam.WorkforcePoolIamBinding("binding", {
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// role: "roles/iam.workforcePoolAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iam.WorkforcePoolIamBinding("binding",
/// location=example["location"],
/// workforce_pool_id=example["workforcePoolId"],
/// role="roles/iam.workforcePoolAdmin",
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
/// var binding = new Gcp.Iam.WorkforcePoolIamBinding("binding", new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
/// Role = "roles/iam.workforcePoolAdmin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkforcePoolIamBinding(ctx, "binding", &iam.WorkforcePoolIamBindingArgs{
/// Location:        pulumi.Any(example.Location),
/// WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamBinding;
/// import com.pulumi.gcp.iam.WorkforcePoolIamBindingArgs;
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
/// var binding = new WorkforcePoolIamBinding("binding", WorkforcePoolIamBindingArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .role("roles/iam.workforcePoolAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iam:WorkforcePoolIamBinding
/// properties:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// role: roles/iam.workforcePoolAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkforcePoolIamMember
/// " pulumi-lang-dotnet=" gcp.iam.WorkforcePoolIamMember
/// " pulumi-lang-go=" iam.WorkforcePoolIamMember
/// " pulumi-lang-python=" iam.WorkforcePoolIamMember
/// " pulumi-lang-yaml=" gcp.iam.WorkforcePoolIamMember
/// " pulumi-lang-java=" gcp.iam.WorkforcePoolIamMember
/// "> gcp.iam.WorkforcePoolIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iam.WorkforcePoolIamMember("member", {
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// role: "roles/iam.workforcePoolAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iam.WorkforcePoolIamMember("member",
/// location=example["location"],
/// workforce_pool_id=example["workforcePoolId"],
/// role="roles/iam.workforcePoolAdmin",
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
/// var member = new Gcp.Iam.WorkforcePoolIamMember("member", new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
/// Role = "roles/iam.workforcePoolAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkforcePoolIamMember(ctx, "member", &iam.WorkforcePoolIamMemberArgs{
/// Location:        pulumi.Any(example.Location),
/// WorkforcePoolId: pulumi.Any(example.WorkforcePoolId),
/// Role:            pulumi.String("roles/iam.workforcePoolAdmin"),
/// Member:          pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iam.WorkforcePoolIamMember;
/// import com.pulumi.gcp.iam.WorkforcePoolIamMemberArgs;
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
/// var member = new WorkforcePoolIamMember("member", WorkforcePoolIamMemberArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .role("roles/iam.workforcePoolAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iam:WorkforcePoolIamMember
/// properties:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// role: roles/iam.workforcePoolAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * locations/{{location}}/workforcePools/{{workforce_pool_id}}
///
/// * {{location}}/{{workforce_pool_id}}
///
/// * {{workforce_pool_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud IAM workforcepool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamMember:WorkforcePoolIamMember editor "locations/{{location}}/workforcePools/{{workforce_pool_id}} roles/iam.workforcePoolViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamMember:WorkforcePoolIamMember editor "locations/{{location}}/workforcePools/{{workforce_pool_id}} roles/iam.workforcePoolViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamMember:WorkforcePoolIamMember editor locations/{{location}}/workforcePools/{{workforce_pool_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkforcePoolIamMember extends CustomResource {
  late final Output<WorkforcePoolIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
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

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-go="`iam.WorkforcePoolIamBinding`" pulumi-lang-python="`iam.WorkforcePoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkforcePoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkforcePoolIamBinding`">`gcp.iam.WorkforcePoolIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> workforcePoolId;

  WorkforcePoolIamMember(
    String name, {
    WorkforcePoolIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolIamMember:WorkforcePoolIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<WorkforcePoolIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
    this.workforcePoolId = Output.createUnknown<String>();
  }
}
