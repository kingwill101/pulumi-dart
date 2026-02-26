import 'package:pulumi/pulumi.dart';
import 'entry_group_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Data Catalog EntryGroup. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-go="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-python="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamPolicy`">`gcp.datacatalog.EntryGroupIamPolicy`</span>: Authoritative. Sets the IAM policy for the entrygroup and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-go="`datacatalog.EntryGroupIamBinding`" pulumi-lang-python="`datacatalog.EntryGroupIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamBinding`">`gcp.datacatalog.EntryGroupIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the entrygroup are preserved.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-go="`datacatalog.EntryGroupIamMember`" pulumi-lang-python="`datacatalog.EntryGroupIamMember`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamMember`">`gcp.datacatalog.EntryGroupIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the entrygroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-go="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-python="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamPolicy`">`gcp.datacatalog.EntryGroupIamPolicy`</span>: Retrieves the IAM policy for the entrygroup
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-go="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-python="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamPolicy`">`gcp.datacatalog.EntryGroupIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-go="`datacatalog.EntryGroupIamBinding`" pulumi-lang-python="`datacatalog.EntryGroupIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamBinding`">`gcp.datacatalog.EntryGroupIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-go="`datacatalog.EntryGroupIamMember`" pulumi-lang-python="`datacatalog.EntryGroupIamMember`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamMember`">`gcp.datacatalog.EntryGroupIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-go="`datacatalog.EntryGroupIamBinding`" pulumi-lang-python="`datacatalog.EntryGroupIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamBinding`">`gcp.datacatalog.EntryGroupIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-go="`datacatalog.EntryGroupIamMember`" pulumi-lang-python="`datacatalog.EntryGroupIamMember`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamMember`">`gcp.datacatalog.EntryGroupIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-dotnet=" gcp.datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-go=" datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-python=" datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-yaml=" gcp.datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-java=" gcp.datacatalog.EntryGroupIamPolicy
/// "> gcp.datacatalog.EntryGroupIamPolicy
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
/// const policy = new gcp.datacatalog.EntryGroupIamPolicy("policy", {
/// entryGroup: basicEntryGroup.name,
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
/// policy = gcp.datacatalog.EntryGroupIamPolicy("policy",
/// entry_group=basic_entry_group["name"],
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
/// var policy = new Gcp.DataCatalog.EntryGroupIamPolicy("policy", new()
/// {
/// EntryGroup = basicEntryGroup.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
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
/// _, err = datacatalog.NewEntryGroupIamPolicy(ctx, "policy", &datacatalog.EntryGroupIamPolicyArgs{
/// EntryGroup: pulumi.Any(basicEntryGroup.Name),
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
/// import com.pulumi.gcp.datacatalog.EntryGroupIamPolicy;
/// import com.pulumi.gcp.datacatalog.EntryGroupIamPolicyArgs;
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
/// var policy = new EntryGroupIamPolicy("policy", EntryGroupIamPolicyArgs.builder()
/// .entryGroup(basicEntryGroup.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:datacatalog:EntryGroupIamPolicy
/// properties:
/// entryGroup: ${basicEntryGroup.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.EntryGroupIamBinding
/// " pulumi-lang-dotnet=" gcp.datacatalog.EntryGroupIamBinding
/// " pulumi-lang-go=" datacatalog.EntryGroupIamBinding
/// " pulumi-lang-python=" datacatalog.EntryGroupIamBinding
/// " pulumi-lang-yaml=" gcp.datacatalog.EntryGroupIamBinding
/// " pulumi-lang-java=" gcp.datacatalog.EntryGroupIamBinding
/// "> gcp.datacatalog.EntryGroupIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.datacatalog.EntryGroupIamBinding("binding", {
/// entryGroup: basicEntryGroup.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.datacatalog.EntryGroupIamBinding("binding",
/// entry_group=basic_entry_group["name"],
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
/// var binding = new Gcp.DataCatalog.EntryGroupIamBinding("binding", new()
/// {
/// EntryGroup = basicEntryGroup.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.NewEntryGroupIamBinding(ctx, "binding", &datacatalog.EntryGroupIamBindingArgs{
/// EntryGroup: pulumi.Any(basicEntryGroup.Name),
/// Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.datacatalog.EntryGroupIamBinding;
/// import com.pulumi.gcp.datacatalog.EntryGroupIamBindingArgs;
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
/// var binding = new EntryGroupIamBinding("binding", EntryGroupIamBindingArgs.builder()
/// .entryGroup(basicEntryGroup.name())
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
/// type: gcp:datacatalog:EntryGroupIamBinding
/// properties:
/// entryGroup: ${basicEntryGroup.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.EntryGroupIamMember
/// " pulumi-lang-dotnet=" gcp.datacatalog.EntryGroupIamMember
/// " pulumi-lang-go=" datacatalog.EntryGroupIamMember
/// " pulumi-lang-python=" datacatalog.EntryGroupIamMember
/// " pulumi-lang-yaml=" gcp.datacatalog.EntryGroupIamMember
/// " pulumi-lang-java=" gcp.datacatalog.EntryGroupIamMember
/// "> gcp.datacatalog.EntryGroupIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.datacatalog.EntryGroupIamMember("member", {
/// entryGroup: basicEntryGroup.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.datacatalog.EntryGroupIamMember("member",
/// entry_group=basic_entry_group["name"],
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
/// var member = new Gcp.DataCatalog.EntryGroupIamMember("member", new()
/// {
/// EntryGroup = basicEntryGroup.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.NewEntryGroupIamMember(ctx, "member", &datacatalog.EntryGroupIamMemberArgs{
/// EntryGroup: pulumi.Any(basicEntryGroup.Name),
/// Role:       pulumi.String("roles/viewer"),
/// Member:     pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.datacatalog.EntryGroupIamMember;
/// import com.pulumi.gcp.datacatalog.EntryGroupIamMemberArgs;
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
/// var member = new EntryGroupIamMember("member", EntryGroupIamMemberArgs.builder()
/// .entryGroup(basicEntryGroup.name())
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
/// type: gcp:datacatalog:EntryGroupIamMember
/// properties:
/// entryGroup: ${basicEntryGroup.name}
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
/// # IAM policy for Data Catalog EntryGroup
///
/// Three different resources help you manage your IAM policy for Data Catalog EntryGroup. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-go="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-python="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamPolicy`">`gcp.datacatalog.EntryGroupIamPolicy`</span>: Authoritative. Sets the IAM policy for the entrygroup and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-go="`datacatalog.EntryGroupIamBinding`" pulumi-lang-python="`datacatalog.EntryGroupIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamBinding`">`gcp.datacatalog.EntryGroupIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the entrygroup are preserved.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-go="`datacatalog.EntryGroupIamMember`" pulumi-lang-python="`datacatalog.EntryGroupIamMember`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamMember`">`gcp.datacatalog.EntryGroupIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the entrygroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-go="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-python="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamPolicy`">`gcp.datacatalog.EntryGroupIamPolicy`</span>: Retrieves the IAM policy for the entrygroup
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-go="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-python="`datacatalog.EntryGroupIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamPolicy`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamPolicy`">`gcp.datacatalog.EntryGroupIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-go="`datacatalog.EntryGroupIamBinding`" pulumi-lang-python="`datacatalog.EntryGroupIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamBinding`">`gcp.datacatalog.EntryGroupIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-go="`datacatalog.EntryGroupIamMember`" pulumi-lang-python="`datacatalog.EntryGroupIamMember`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamMember`">`gcp.datacatalog.EntryGroupIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-go="`datacatalog.EntryGroupIamBinding`" pulumi-lang-python="`datacatalog.EntryGroupIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamBinding`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamBinding`">`gcp.datacatalog.EntryGroupIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-go="`datacatalog.EntryGroupIamMember`" pulumi-lang-python="`datacatalog.EntryGroupIamMember`" pulumi-lang-yaml="`gcp.datacatalog.EntryGroupIamMember`" pulumi-lang-java="`gcp.datacatalog.EntryGroupIamMember`">`gcp.datacatalog.EntryGroupIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-dotnet=" gcp.datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-go=" datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-python=" datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-yaml=" gcp.datacatalog.EntryGroupIamPolicy
/// " pulumi-lang-java=" gcp.datacatalog.EntryGroupIamPolicy
/// "> gcp.datacatalog.EntryGroupIamPolicy
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
/// const policy = new gcp.datacatalog.EntryGroupIamPolicy("policy", {
/// entryGroup: basicEntryGroup.name,
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
/// policy = gcp.datacatalog.EntryGroupIamPolicy("policy",
/// entry_group=basic_entry_group["name"],
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
/// var policy = new Gcp.DataCatalog.EntryGroupIamPolicy("policy", new()
/// {
/// EntryGroup = basicEntryGroup.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
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
/// _, err = datacatalog.NewEntryGroupIamPolicy(ctx, "policy", &datacatalog.EntryGroupIamPolicyArgs{
/// EntryGroup: pulumi.Any(basicEntryGroup.Name),
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
/// import com.pulumi.gcp.datacatalog.EntryGroupIamPolicy;
/// import com.pulumi.gcp.datacatalog.EntryGroupIamPolicyArgs;
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
/// var policy = new EntryGroupIamPolicy("policy", EntryGroupIamPolicyArgs.builder()
/// .entryGroup(basicEntryGroup.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:datacatalog:EntryGroupIamPolicy
/// properties:
/// entryGroup: ${basicEntryGroup.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.EntryGroupIamBinding
/// " pulumi-lang-dotnet=" gcp.datacatalog.EntryGroupIamBinding
/// " pulumi-lang-go=" datacatalog.EntryGroupIamBinding
/// " pulumi-lang-python=" datacatalog.EntryGroupIamBinding
/// " pulumi-lang-yaml=" gcp.datacatalog.EntryGroupIamBinding
/// " pulumi-lang-java=" gcp.datacatalog.EntryGroupIamBinding
/// "> gcp.datacatalog.EntryGroupIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.datacatalog.EntryGroupIamBinding("binding", {
/// entryGroup: basicEntryGroup.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.datacatalog.EntryGroupIamBinding("binding",
/// entry_group=basic_entry_group["name"],
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
/// var binding = new Gcp.DataCatalog.EntryGroupIamBinding("binding", new()
/// {
/// EntryGroup = basicEntryGroup.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.NewEntryGroupIamBinding(ctx, "binding", &datacatalog.EntryGroupIamBindingArgs{
/// EntryGroup: pulumi.Any(basicEntryGroup.Name),
/// Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.datacatalog.EntryGroupIamBinding;
/// import com.pulumi.gcp.datacatalog.EntryGroupIamBindingArgs;
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
/// var binding = new EntryGroupIamBinding("binding", EntryGroupIamBindingArgs.builder()
/// .entryGroup(basicEntryGroup.name())
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
/// type: gcp:datacatalog:EntryGroupIamBinding
/// properties:
/// entryGroup: ${basicEntryGroup.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.EntryGroupIamMember
/// " pulumi-lang-dotnet=" gcp.datacatalog.EntryGroupIamMember
/// " pulumi-lang-go=" datacatalog.EntryGroupIamMember
/// " pulumi-lang-python=" datacatalog.EntryGroupIamMember
/// " pulumi-lang-yaml=" gcp.datacatalog.EntryGroupIamMember
/// " pulumi-lang-java=" gcp.datacatalog.EntryGroupIamMember
/// "> gcp.datacatalog.EntryGroupIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.datacatalog.EntryGroupIamMember("member", {
/// entryGroup: basicEntryGroup.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.datacatalog.EntryGroupIamMember("member",
/// entry_group=basic_entry_group["name"],
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
/// var member = new Gcp.DataCatalog.EntryGroupIamMember("member", new()
/// {
/// EntryGroup = basicEntryGroup.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.NewEntryGroupIamMember(ctx, "member", &datacatalog.EntryGroupIamMemberArgs{
/// EntryGroup: pulumi.Any(basicEntryGroup.Name),
/// Role:       pulumi.String("roles/viewer"),
/// Member:     pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.datacatalog.EntryGroupIamMember;
/// import com.pulumi.gcp.datacatalog.EntryGroupIamMemberArgs;
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
/// var member = new EntryGroupIamMember("member", EntryGroupIamMemberArgs.builder()
/// .entryGroup(basicEntryGroup.name())
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
/// type: gcp:datacatalog:EntryGroupIamMember
/// properties:
/// entryGroup: ${basicEntryGroup.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/entryGroups/{{entry_group}}
///
/// * {{project}}/{{region}}/{{entry_group}}
///
/// * {{region}}/{{entry_group}}
///
/// * {{entry_group}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Data Catalog entrygroup IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entryGroupIamPolicy:EntryGroupIamPolicy editor "projects/{{project}}/locations/{{region}}/entryGroups/{{entry_group}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entryGroupIamPolicy:EntryGroupIamPolicy editor "projects/{{project}}/locations/{{region}}/entryGroups/{{entry_group}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entryGroupIamPolicy:EntryGroupIamPolicy editor projects/{{project}}/locations/{{region}}/entryGroups/{{entry_group}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EntryGroupIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> entryGroup;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// EntryGroup location region.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  EntryGroupIamPolicy(
    String name, {
    EntryGroupIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/entryGroupIamPolicy:EntryGroupIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.entryGroup = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
