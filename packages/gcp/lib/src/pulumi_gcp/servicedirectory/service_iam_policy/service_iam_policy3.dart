import 'package:pulumi/pulumi.dart';
import 'service_iam_policy_args3.dart';

/// Three different resources help you manage your IAM policy for Service Directory Service. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-go="`servicedirectory.ServiceIamPolicy`" pulumi-lang-python="`servicedirectory.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamPolicy`">`gcp.servicedirectory.ServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-go="`servicedirectory.ServiceIamMember`" pulumi-lang-python="`servicedirectory.ServiceIamMember`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamMember`">`gcp.servicedirectory.ServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-go="`servicedirectory.ServiceIamPolicy`" pulumi-lang-python="`servicedirectory.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamPolicy`">`gcp.servicedirectory.ServiceIamPolicy`</span>: Retrieves the IAM policy for the service
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-go="`servicedirectory.ServiceIamPolicy`" pulumi-lang-python="`servicedirectory.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamPolicy`">`gcp.servicedirectory.ServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-go="`servicedirectory.ServiceIamMember`" pulumi-lang-python="`servicedirectory.ServiceIamMember`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamMember`">`gcp.servicedirectory.ServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-go="`servicedirectory.ServiceIamMember`" pulumi-lang-python="`servicedirectory.ServiceIamMember`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamMember`">`gcp.servicedirectory.ServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.servicedirectory.ServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.servicedirectory.ServiceIamPolicy
/// " pulumi-lang-go=" servicedirectory.ServiceIamPolicy
/// " pulumi-lang-python=" servicedirectory.ServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.servicedirectory.ServiceIamPolicy
/// " pulumi-lang-java=" gcp.servicedirectory.ServiceIamPolicy
/// "> gcp.servicedirectory.ServiceIamPolicy
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
/// const policy = new gcp.servicedirectory.ServiceIamPolicy("policy", {
/// name: example.name,
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
/// policy = gcp.servicedirectory.ServiceIamPolicy("policy",
/// name=example["name"],
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
/// var policy = new Gcp.ServiceDirectory.ServiceIamPolicy("policy", new()
/// {
/// Name = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
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
/// _, err = servicedirectory.NewServiceIamPolicy(ctx, "policy", &servicedirectory.ServiceIamPolicyArgs{
/// Name:       pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.servicedirectory.ServiceIamPolicy;
/// import com.pulumi.gcp.servicedirectory.ServiceIamPolicyArgs;
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
/// var policy = new ServiceIamPolicy("policy", ServiceIamPolicyArgs.builder()
/// .name(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:servicedirectory:ServiceIamPolicy
/// properties:
/// name: ${example.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.servicedirectory.ServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.servicedirectory.ServiceIamBinding
/// " pulumi-lang-go=" servicedirectory.ServiceIamBinding
/// " pulumi-lang-python=" servicedirectory.ServiceIamBinding
/// " pulumi-lang-yaml=" gcp.servicedirectory.ServiceIamBinding
/// " pulumi-lang-java=" gcp.servicedirectory.ServiceIamBinding
/// "> gcp.servicedirectory.ServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.servicedirectory.ServiceIamBinding("binding", {
/// name: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.servicedirectory.ServiceIamBinding("binding",
/// name=example["name"],
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
/// var binding = new Gcp.ServiceDirectory.ServiceIamBinding("binding", new()
/// {
/// Name = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicedirectory.NewServiceIamBinding(ctx, "binding", &servicedirectory.ServiceIamBindingArgs{
/// Name: pulumi.Any(example.Name),
/// Role: pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.servicedirectory.ServiceIamBinding;
/// import com.pulumi.gcp.servicedirectory.ServiceIamBindingArgs;
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
/// var binding = new ServiceIamBinding("binding", ServiceIamBindingArgs.builder()
/// .name(example.name())
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
/// type: gcp:servicedirectory:ServiceIamBinding
/// properties:
/// name: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.servicedirectory.ServiceIamMember
/// " pulumi-lang-dotnet=" gcp.servicedirectory.ServiceIamMember
/// " pulumi-lang-go=" servicedirectory.ServiceIamMember
/// " pulumi-lang-python=" servicedirectory.ServiceIamMember
/// " pulumi-lang-yaml=" gcp.servicedirectory.ServiceIamMember
/// " pulumi-lang-java=" gcp.servicedirectory.ServiceIamMember
/// "> gcp.servicedirectory.ServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.servicedirectory.ServiceIamMember("member", {
/// name: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.servicedirectory.ServiceIamMember("member",
/// name=example["name"],
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
/// var member = new Gcp.ServiceDirectory.ServiceIamMember("member", new()
/// {
/// Name = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicedirectory.NewServiceIamMember(ctx, "member", &servicedirectory.ServiceIamMemberArgs{
/// Name:   pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.servicedirectory.ServiceIamMember;
/// import com.pulumi.gcp.servicedirectory.ServiceIamMemberArgs;
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
/// var member = new ServiceIamMember("member", ServiceIamMemberArgs.builder()
/// .name(example.name())
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
/// type: gcp:servicedirectory:ServiceIamMember
/// properties:
/// name: ${example.name}
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
/// # IAM policy for Service Directory Service
///
/// Three different resources help you manage your IAM policy for Service Directory Service. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-go="`servicedirectory.ServiceIamPolicy`" pulumi-lang-python="`servicedirectory.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamPolicy`">`gcp.servicedirectory.ServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-go="`servicedirectory.ServiceIamMember`" pulumi-lang-python="`servicedirectory.ServiceIamMember`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamMember`">`gcp.servicedirectory.ServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-go="`servicedirectory.ServiceIamPolicy`" pulumi-lang-python="`servicedirectory.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamPolicy`">`gcp.servicedirectory.ServiceIamPolicy`</span>: Retrieves the IAM policy for the service
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-go="`servicedirectory.ServiceIamPolicy`" pulumi-lang-python="`servicedirectory.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamPolicy`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamPolicy`">`gcp.servicedirectory.ServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-go="`servicedirectory.ServiceIamMember`" pulumi-lang-python="`servicedirectory.ServiceIamMember`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamMember`">`gcp.servicedirectory.ServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-go="`servicedirectory.ServiceIamMember`" pulumi-lang-python="`servicedirectory.ServiceIamMember`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamMember`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamMember`">`gcp.servicedirectory.ServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.servicedirectory.ServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.servicedirectory.ServiceIamPolicy
/// " pulumi-lang-go=" servicedirectory.ServiceIamPolicy
/// " pulumi-lang-python=" servicedirectory.ServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.servicedirectory.ServiceIamPolicy
/// " pulumi-lang-java=" gcp.servicedirectory.ServiceIamPolicy
/// "> gcp.servicedirectory.ServiceIamPolicy
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
/// const policy = new gcp.servicedirectory.ServiceIamPolicy("policy", {
/// name: example.name,
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
/// policy = gcp.servicedirectory.ServiceIamPolicy("policy",
/// name=example["name"],
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
/// var policy = new Gcp.ServiceDirectory.ServiceIamPolicy("policy", new()
/// {
/// Name = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
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
/// _, err = servicedirectory.NewServiceIamPolicy(ctx, "policy", &servicedirectory.ServiceIamPolicyArgs{
/// Name:       pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.servicedirectory.ServiceIamPolicy;
/// import com.pulumi.gcp.servicedirectory.ServiceIamPolicyArgs;
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
/// var policy = new ServiceIamPolicy("policy", ServiceIamPolicyArgs.builder()
/// .name(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:servicedirectory:ServiceIamPolicy
/// properties:
/// name: ${example.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.servicedirectory.ServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.servicedirectory.ServiceIamBinding
/// " pulumi-lang-go=" servicedirectory.ServiceIamBinding
/// " pulumi-lang-python=" servicedirectory.ServiceIamBinding
/// " pulumi-lang-yaml=" gcp.servicedirectory.ServiceIamBinding
/// " pulumi-lang-java=" gcp.servicedirectory.ServiceIamBinding
/// "> gcp.servicedirectory.ServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.servicedirectory.ServiceIamBinding("binding", {
/// name: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.servicedirectory.ServiceIamBinding("binding",
/// name=example["name"],
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
/// var binding = new Gcp.ServiceDirectory.ServiceIamBinding("binding", new()
/// {
/// Name = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicedirectory.NewServiceIamBinding(ctx, "binding", &servicedirectory.ServiceIamBindingArgs{
/// Name: pulumi.Any(example.Name),
/// Role: pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.servicedirectory.ServiceIamBinding;
/// import com.pulumi.gcp.servicedirectory.ServiceIamBindingArgs;
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
/// var binding = new ServiceIamBinding("binding", ServiceIamBindingArgs.builder()
/// .name(example.name())
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
/// type: gcp:servicedirectory:ServiceIamBinding
/// properties:
/// name: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.servicedirectory.ServiceIamMember
/// " pulumi-lang-dotnet=" gcp.servicedirectory.ServiceIamMember
/// " pulumi-lang-go=" servicedirectory.ServiceIamMember
/// " pulumi-lang-python=" servicedirectory.ServiceIamMember
/// " pulumi-lang-yaml=" gcp.servicedirectory.ServiceIamMember
/// " pulumi-lang-java=" gcp.servicedirectory.ServiceIamMember
/// "> gcp.servicedirectory.ServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.servicedirectory.ServiceIamMember("member", {
/// name: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.servicedirectory.ServiceIamMember("member",
/// name=example["name"],
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
/// var member = new Gcp.ServiceDirectory.ServiceIamMember("member", new()
/// {
/// Name = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicedirectory.NewServiceIamMember(ctx, "member", &servicedirectory.ServiceIamMemberArgs{
/// Name:   pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.servicedirectory.ServiceIamMember;
/// import com.pulumi.gcp.servicedirectory.ServiceIamMemberArgs;
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
/// var member = new ServiceIamMember("member", ServiceIamMemberArgs.builder()
/// .name(example.name())
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
/// type: gcp:servicedirectory:ServiceIamMember
/// properties:
/// name: ${example.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}
///
/// * {{project}}/{{location}}/{{namespace_id}}/{{service_id}}
///
/// * {{location}}/{{namespace_id}}/{{service_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Service Directory service IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/serviceIamPolicy:ServiceIamPolicy editor "projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/serviceIamPolicy:ServiceIamPolicy editor "projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/serviceIamPolicy:ServiceIamPolicy editor projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ServiceIamPolicy3 extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  ServiceIamPolicy3(
    String name, {
    ServiceIamPolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/serviceIamPolicy:ServiceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
  }
}
