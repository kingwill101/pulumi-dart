import 'package:pulumi/pulumi.dart';
import '../v2_organization_source_iam_member_condition/v2_organization_source_iam_member_condition.dart';
import 'v2_organization_source_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Security Command Center (SCC) v2 API OrganizationSource. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamPolicy`">`gcp.securitycenter.V2OrganizationSourceIamPolicy`</span>: Authoritative. Sets the IAM policy for the organizationsource and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organizationsource are preserved.
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamMember`">`gcp.securitycenter.V2OrganizationSourceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organizationsource are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamPolicy`">`gcp.securitycenter.V2OrganizationSourceIamPolicy`</span>: Retrieves the IAM policy for the organizationsource
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamPolicy`">`gcp.securitycenter.V2OrganizationSourceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamMember`">`gcp.securitycenter.V2OrganizationSourceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamMember`">`gcp.securitycenter.V2OrganizationSourceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-dotnet=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-go=" securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-python=" securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-yaml=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-java=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// "> gcp.securitycenter.V2OrganizationSourceIamPolicy
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
/// const policy = new gcp.securitycenter.V2OrganizationSourceIamPolicy("policy", {
/// source: customSource.name,
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
/// policy = gcp.securitycenter.V2OrganizationSourceIamPolicy("policy",
/// source=custom_source["name"],
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
/// var policy = new Gcp.SecurityCenter.V2OrganizationSourceIamPolicy("policy", new()
/// {
/// Source = customSource.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
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
/// _, err = securitycenter.NewV2OrganizationSourceIamPolicy(ctx, "policy", &securitycenter.V2OrganizationSourceIamPolicyArgs{
/// Source:     pulumi.Any(customSource.Name),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicy;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicyArgs;
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
/// var policy = new V2OrganizationSourceIamPolicy("policy", V2OrganizationSourceIamPolicyArgs.builder()
/// .source(customSource.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:securitycenter:V2OrganizationSourceIamPolicy
/// properties:
/// source: ${customSource.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-dotnet=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-go=" securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-python=" securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-yaml=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-java=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// "> gcp.securitycenter.V2OrganizationSourceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securitycenter.V2OrganizationSourceIamBinding("binding", {
/// source: customSource.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securitycenter.V2OrganizationSourceIamBinding("binding",
/// source=custom_source["name"],
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
/// var binding = new Gcp.SecurityCenter.V2OrganizationSourceIamBinding("binding", new()
/// {
/// Source = customSource.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitycenter.NewV2OrganizationSourceIamBinding(ctx, "binding", &securitycenter.V2OrganizationSourceIamBindingArgs{
/// Source: pulumi.Any(customSource.Name),
/// Role:   pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBinding;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBindingArgs;
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
/// var binding = new V2OrganizationSourceIamBinding("binding", V2OrganizationSourceIamBindingArgs.builder()
/// .source(customSource.name())
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
/// type: gcp:securitycenter:V2OrganizationSourceIamBinding
/// properties:
/// source: ${customSource.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-dotnet=" gcp.securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-go=" securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-python=" securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-yaml=" gcp.securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-java=" gcp.securitycenter.V2OrganizationSourceIamMember
/// "> gcp.securitycenter.V2OrganizationSourceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securitycenter.V2OrganizationSourceIamMember("member", {
/// source: customSource.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securitycenter.V2OrganizationSourceIamMember("member",
/// source=custom_source["name"],
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
/// var member = new Gcp.SecurityCenter.V2OrganizationSourceIamMember("member", new()
/// {
/// Source = customSource.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitycenter.NewV2OrganizationSourceIamMember(ctx, "member", &securitycenter.V2OrganizationSourceIamMemberArgs{
/// Source: pulumi.Any(customSource.Name),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMember;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMemberArgs;
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
/// var member = new V2OrganizationSourceIamMember("member", V2OrganizationSourceIamMemberArgs.builder()
/// .source(customSource.name())
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
/// type: gcp:securitycenter:V2OrganizationSourceIamMember
/// properties:
/// source: ${customSource.name}
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
/// # IAM policy for Security Command Center (SCC) v2 API OrganizationSource
///
/// Three different resources help you manage your IAM policy for Security Command Center (SCC) v2 API OrganizationSource. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamPolicy`">`gcp.securitycenter.V2OrganizationSourceIamPolicy`</span>: Authoritative. Sets the IAM policy for the organizationsource and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organizationsource are preserved.
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamMember`">`gcp.securitycenter.V2OrganizationSourceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organizationsource are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamPolicy`">`gcp.securitycenter.V2OrganizationSourceIamPolicy`</span>: Retrieves the IAM policy for the organizationsource
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamPolicy`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamPolicy`">`gcp.securitycenter.V2OrganizationSourceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamMember`">`gcp.securitycenter.V2OrganizationSourceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamMember`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamMember`">`gcp.securitycenter.V2OrganizationSourceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-dotnet=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-go=" securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-python=" securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-yaml=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// " pulumi-lang-java=" gcp.securitycenter.V2OrganizationSourceIamPolicy
/// "> gcp.securitycenter.V2OrganizationSourceIamPolicy
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
/// const policy = new gcp.securitycenter.V2OrganizationSourceIamPolicy("policy", {
/// source: customSource.name,
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
/// policy = gcp.securitycenter.V2OrganizationSourceIamPolicy("policy",
/// source=custom_source["name"],
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
/// var policy = new Gcp.SecurityCenter.V2OrganizationSourceIamPolicy("policy", new()
/// {
/// Source = customSource.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
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
/// _, err = securitycenter.NewV2OrganizationSourceIamPolicy(ctx, "policy", &securitycenter.V2OrganizationSourceIamPolicyArgs{
/// Source:     pulumi.Any(customSource.Name),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicy;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamPolicyArgs;
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
/// var policy = new V2OrganizationSourceIamPolicy("policy", V2OrganizationSourceIamPolicyArgs.builder()
/// .source(customSource.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:securitycenter:V2OrganizationSourceIamPolicy
/// properties:
/// source: ${customSource.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-dotnet=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-go=" securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-python=" securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-yaml=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// " pulumi-lang-java=" gcp.securitycenter.V2OrganizationSourceIamBinding
/// "> gcp.securitycenter.V2OrganizationSourceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securitycenter.V2OrganizationSourceIamBinding("binding", {
/// source: customSource.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securitycenter.V2OrganizationSourceIamBinding("binding",
/// source=custom_source["name"],
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
/// var binding = new Gcp.SecurityCenter.V2OrganizationSourceIamBinding("binding", new()
/// {
/// Source = customSource.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitycenter.NewV2OrganizationSourceIamBinding(ctx, "binding", &securitycenter.V2OrganizationSourceIamBindingArgs{
/// Source: pulumi.Any(customSource.Name),
/// Role:   pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBinding;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamBindingArgs;
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
/// var binding = new V2OrganizationSourceIamBinding("binding", V2OrganizationSourceIamBindingArgs.builder()
/// .source(customSource.name())
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
/// type: gcp:securitycenter:V2OrganizationSourceIamBinding
/// properties:
/// source: ${customSource.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-dotnet=" gcp.securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-go=" securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-python=" securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-yaml=" gcp.securitycenter.V2OrganizationSourceIamMember
/// " pulumi-lang-java=" gcp.securitycenter.V2OrganizationSourceIamMember
/// "> gcp.securitycenter.V2OrganizationSourceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securitycenter.V2OrganizationSourceIamMember("member", {
/// source: customSource.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securitycenter.V2OrganizationSourceIamMember("member",
/// source=custom_source["name"],
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
/// var member = new Gcp.SecurityCenter.V2OrganizationSourceIamMember("member", new()
/// {
/// Source = customSource.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitycenter.NewV2OrganizationSourceIamMember(ctx, "member", &securitycenter.V2OrganizationSourceIamMemberArgs{
/// Source: pulumi.Any(customSource.Name),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMember;
/// import com.pulumi.gcp.securitycenter.V2OrganizationSourceIamMemberArgs;
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
/// var member = new V2OrganizationSourceIamMember("member", V2OrganizationSourceIamMemberArgs.builder()
/// .source(customSource.name())
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
/// type: gcp:securitycenter:V2OrganizationSourceIamMember
/// properties:
/// source: ${customSource.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * organizations/{{organization}}/sources/{{source}}
///
/// * {{organization}}/{{source}}
///
/// * {{source}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Security Command Center (SCC) v2 API organizationsource IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamMember:V2OrganizationSourceIamMember editor "organizations/{{organization}}/sources/{{source}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamMember:V2OrganizationSourceIamMember editor "organizations/{{organization}}/sources/{{source}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamMember:V2OrganizationSourceIamMember editor organizations/{{organization}}/sources/{{source}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class V2OrganizationSourceIamMember extends CustomResource {
  late final Output<V2OrganizationSourceIamMemberCondition?> condition;

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
  late final Output<String> organization;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-dotnet="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-go="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-python="`securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-yaml="`gcp.securitycenter.V2OrganizationSourceIamBinding`" pulumi-lang-java="`gcp.securitycenter.V2OrganizationSourceIamBinding`">`gcp.securitycenter.V2OrganizationSourceIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> source;

  V2OrganizationSourceIamMember(
    String name, {
    V2OrganizationSourceIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSourceIamMember:V2OrganizationSourceIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<V2OrganizationSourceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.organization = registerOutput<String>('organization');
    this.role = registerOutput<String>('role');
    this.source = registerOutput<String>('source');
  }
}
