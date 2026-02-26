import 'package:pulumi/pulumi.dart';
import '../tag_key_iam_binding_condition/tag_key_iam_binding_condition.dart';
import 'tag_key_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Tags TagKey. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-go="`tags.TagKeyIamPolicy`" pulumi-lang-python="`tags.TagKeyIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-java="`gcp.tags.TagKeyIamPolicy`">`gcp.tags.TagKeyIamPolicy`</span>: Authoritative. Sets the IAM policy for the tagkey and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tagkey are preserved.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamMember`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamMember`" pulumi-lang-go="`tags.TagKeyIamMember`" pulumi-lang-python="`tags.TagKeyIamMember`" pulumi-lang-yaml="`gcp.tags.TagKeyIamMember`" pulumi-lang-java="`gcp.tags.TagKeyIamMember`">`gcp.tags.TagKeyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tagkey are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-go="`tags.TagKeyIamPolicy`" pulumi-lang-python="`tags.TagKeyIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-java="`gcp.tags.TagKeyIamPolicy`">`gcp.tags.TagKeyIamPolicy`</span>: Retrieves the IAM policy for the tagkey
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-go="`tags.TagKeyIamPolicy`" pulumi-lang-python="`tags.TagKeyIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-java="`gcp.tags.TagKeyIamPolicy`">`gcp.tags.TagKeyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamMember`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamMember`" pulumi-lang-go="`tags.TagKeyIamMember`" pulumi-lang-python="`tags.TagKeyIamMember`" pulumi-lang-yaml="`gcp.tags.TagKeyIamMember`" pulumi-lang-java="`gcp.tags.TagKeyIamMember`">`gcp.tags.TagKeyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamMember`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamMember`" pulumi-lang-go="`tags.TagKeyIamMember`" pulumi-lang-python="`tags.TagKeyIamMember`" pulumi-lang-yaml="`gcp.tags.TagKeyIamMember`" pulumi-lang-java="`gcp.tags.TagKeyIamMember`">`gcp.tags.TagKeyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagKeyIamPolicy
/// " pulumi-lang-dotnet=" gcp.tags.TagKeyIamPolicy
/// " pulumi-lang-go=" tags.TagKeyIamPolicy
/// " pulumi-lang-python=" tags.TagKeyIamPolicy
/// " pulumi-lang-yaml=" gcp.tags.TagKeyIamPolicy
/// " pulumi-lang-java=" gcp.tags.TagKeyIamPolicy
/// "> gcp.tags.TagKeyIamPolicy
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
/// const policy = new gcp.tags.TagKeyIamPolicy("policy", {
/// tagKey: key.name,
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
/// policy = gcp.tags.TagKeyIamPolicy("policy",
/// tag_key=key["name"],
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
/// var policy = new Gcp.Tags.TagKeyIamPolicy("policy", new()
/// {
/// TagKey = key.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
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
/// _, err = tags.NewTagKeyIamPolicy(ctx, "policy", &tags.TagKeyIamPolicyArgs{
/// TagKey:     pulumi.Any(key.Name),
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
/// import com.pulumi.gcp.tags.TagKeyIamPolicy;
/// import com.pulumi.gcp.tags.TagKeyIamPolicyArgs;
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
/// var policy = new TagKeyIamPolicy("policy", TagKeyIamPolicyArgs.builder()
/// .tagKey(key.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:tags:TagKeyIamPolicy
/// properties:
/// tagKey: ${key.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagKeyIamBinding
/// " pulumi-lang-dotnet=" gcp.tags.TagKeyIamBinding
/// " pulumi-lang-go=" tags.TagKeyIamBinding
/// " pulumi-lang-python=" tags.TagKeyIamBinding
/// " pulumi-lang-yaml=" gcp.tags.TagKeyIamBinding
/// " pulumi-lang-java=" gcp.tags.TagKeyIamBinding
/// "> gcp.tags.TagKeyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.tags.TagKeyIamBinding("binding", {
/// tagKey: key.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.tags.TagKeyIamBinding("binding",
/// tag_key=key["name"],
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
/// var binding = new Gcp.Tags.TagKeyIamBinding("binding", new()
/// {
/// TagKey = key.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tags.NewTagKeyIamBinding(ctx, "binding", &tags.TagKeyIamBindingArgs{
/// TagKey: pulumi.Any(key.Name),
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
/// import com.pulumi.gcp.tags.TagKeyIamBinding;
/// import com.pulumi.gcp.tags.TagKeyIamBindingArgs;
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
/// var binding = new TagKeyIamBinding("binding", TagKeyIamBindingArgs.builder()
/// .tagKey(key.name())
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
/// type: gcp:tags:TagKeyIamBinding
/// properties:
/// tagKey: ${key.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagKeyIamMember
/// " pulumi-lang-dotnet=" gcp.tags.TagKeyIamMember
/// " pulumi-lang-go=" tags.TagKeyIamMember
/// " pulumi-lang-python=" tags.TagKeyIamMember
/// " pulumi-lang-yaml=" gcp.tags.TagKeyIamMember
/// " pulumi-lang-java=" gcp.tags.TagKeyIamMember
/// "> gcp.tags.TagKeyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.tags.TagKeyIamMember("member", {
/// tagKey: key.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.tags.TagKeyIamMember("member",
/// tag_key=key["name"],
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
/// var member = new Gcp.Tags.TagKeyIamMember("member", new()
/// {
/// TagKey = key.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tags.NewTagKeyIamMember(ctx, "member", &tags.TagKeyIamMemberArgs{
/// TagKey: pulumi.Any(key.Name),
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
/// import com.pulumi.gcp.tags.TagKeyIamMember;
/// import com.pulumi.gcp.tags.TagKeyIamMemberArgs;
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
/// var member = new TagKeyIamMember("member", TagKeyIamMemberArgs.builder()
/// .tagKey(key.name())
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
/// type: gcp:tags:TagKeyIamMember
/// properties:
/// tagKey: ${key.name}
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
/// # IAM policy for Tags TagKey
///
/// Three different resources help you manage your IAM policy for Tags TagKey. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-go="`tags.TagKeyIamPolicy`" pulumi-lang-python="`tags.TagKeyIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-java="`gcp.tags.TagKeyIamPolicy`">`gcp.tags.TagKeyIamPolicy`</span>: Authoritative. Sets the IAM policy for the tagkey and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tagkey are preserved.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamMember`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamMember`" pulumi-lang-go="`tags.TagKeyIamMember`" pulumi-lang-python="`tags.TagKeyIamMember`" pulumi-lang-yaml="`gcp.tags.TagKeyIamMember`" pulumi-lang-java="`gcp.tags.TagKeyIamMember`">`gcp.tags.TagKeyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tagkey are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-go="`tags.TagKeyIamPolicy`" pulumi-lang-python="`tags.TagKeyIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-java="`gcp.tags.TagKeyIamPolicy`">`gcp.tags.TagKeyIamPolicy`</span>: Retrieves the IAM policy for the tagkey
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-go="`tags.TagKeyIamPolicy`" pulumi-lang-python="`tags.TagKeyIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagKeyIamPolicy`" pulumi-lang-java="`gcp.tags.TagKeyIamPolicy`">`gcp.tags.TagKeyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamMember`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamMember`" pulumi-lang-go="`tags.TagKeyIamMember`" pulumi-lang-python="`tags.TagKeyIamMember`" pulumi-lang-yaml="`gcp.tags.TagKeyIamMember`" pulumi-lang-java="`gcp.tags.TagKeyIamMember`">`gcp.tags.TagKeyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamMember`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamMember`" pulumi-lang-go="`tags.TagKeyIamMember`" pulumi-lang-python="`tags.TagKeyIamMember`" pulumi-lang-yaml="`gcp.tags.TagKeyIamMember`" pulumi-lang-java="`gcp.tags.TagKeyIamMember`">`gcp.tags.TagKeyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagKeyIamPolicy
/// " pulumi-lang-dotnet=" gcp.tags.TagKeyIamPolicy
/// " pulumi-lang-go=" tags.TagKeyIamPolicy
/// " pulumi-lang-python=" tags.TagKeyIamPolicy
/// " pulumi-lang-yaml=" gcp.tags.TagKeyIamPolicy
/// " pulumi-lang-java=" gcp.tags.TagKeyIamPolicy
/// "> gcp.tags.TagKeyIamPolicy
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
/// const policy = new gcp.tags.TagKeyIamPolicy("policy", {
/// tagKey: key.name,
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
/// policy = gcp.tags.TagKeyIamPolicy("policy",
/// tag_key=key["name"],
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
/// var policy = new Gcp.Tags.TagKeyIamPolicy("policy", new()
/// {
/// TagKey = key.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
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
/// _, err = tags.NewTagKeyIamPolicy(ctx, "policy", &tags.TagKeyIamPolicyArgs{
/// TagKey:     pulumi.Any(key.Name),
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
/// import com.pulumi.gcp.tags.TagKeyIamPolicy;
/// import com.pulumi.gcp.tags.TagKeyIamPolicyArgs;
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
/// var policy = new TagKeyIamPolicy("policy", TagKeyIamPolicyArgs.builder()
/// .tagKey(key.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:tags:TagKeyIamPolicy
/// properties:
/// tagKey: ${key.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagKeyIamBinding
/// " pulumi-lang-dotnet=" gcp.tags.TagKeyIamBinding
/// " pulumi-lang-go=" tags.TagKeyIamBinding
/// " pulumi-lang-python=" tags.TagKeyIamBinding
/// " pulumi-lang-yaml=" gcp.tags.TagKeyIamBinding
/// " pulumi-lang-java=" gcp.tags.TagKeyIamBinding
/// "> gcp.tags.TagKeyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.tags.TagKeyIamBinding("binding", {
/// tagKey: key.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.tags.TagKeyIamBinding("binding",
/// tag_key=key["name"],
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
/// var binding = new Gcp.Tags.TagKeyIamBinding("binding", new()
/// {
/// TagKey = key.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tags.NewTagKeyIamBinding(ctx, "binding", &tags.TagKeyIamBindingArgs{
/// TagKey: pulumi.Any(key.Name),
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
/// import com.pulumi.gcp.tags.TagKeyIamBinding;
/// import com.pulumi.gcp.tags.TagKeyIamBindingArgs;
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
/// var binding = new TagKeyIamBinding("binding", TagKeyIamBindingArgs.builder()
/// .tagKey(key.name())
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
/// type: gcp:tags:TagKeyIamBinding
/// properties:
/// tagKey: ${key.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagKeyIamMember
/// " pulumi-lang-dotnet=" gcp.tags.TagKeyIamMember
/// " pulumi-lang-go=" tags.TagKeyIamMember
/// " pulumi-lang-python=" tags.TagKeyIamMember
/// " pulumi-lang-yaml=" gcp.tags.TagKeyIamMember
/// " pulumi-lang-java=" gcp.tags.TagKeyIamMember
/// "> gcp.tags.TagKeyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.tags.TagKeyIamMember("member", {
/// tagKey: key.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.tags.TagKeyIamMember("member",
/// tag_key=key["name"],
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
/// var member = new Gcp.Tags.TagKeyIamMember("member", new()
/// {
/// TagKey = key.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tags.NewTagKeyIamMember(ctx, "member", &tags.TagKeyIamMemberArgs{
/// TagKey: pulumi.Any(key.Name),
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
/// import com.pulumi.gcp.tags.TagKeyIamMember;
/// import com.pulumi.gcp.tags.TagKeyIamMemberArgs;
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
/// var member = new TagKeyIamMember("member", TagKeyIamMemberArgs.builder()
/// .tagKey(key.name())
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
/// type: gcp:tags:TagKeyIamMember
/// properties:
/// tagKey: ${key.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * tagKeys/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Tags tagkey IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:tags/tagKeyIamBinding:TagKeyIamBinding editor "tagKeys/{{tag_key}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:tags/tagKeyIamBinding:TagKeyIamBinding editor "tagKeys/{{tag_key}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:tags/tagKeyIamBinding:TagKeyIamBinding editor tagKeys/{{tag_key}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TagKeyIamBinding extends CustomResource {
  late final Output<TagKeyIamBindingCondition?> condition;

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
  late final Output<List<String>> members;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.tags.TagKeyIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagKeyIamBinding`" pulumi-lang-go="`tags.TagKeyIamBinding`" pulumi-lang-python="`tags.TagKeyIamBinding`" pulumi-lang-yaml="`gcp.tags.TagKeyIamBinding`" pulumi-lang-java="`gcp.tags.TagKeyIamBinding`">`gcp.tags.TagKeyIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> tagKey;

  TagKeyIamBinding(
    String name, {
    TagKeyIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagKeyIamBinding:TagKeyIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<TagKeyIamBindingCondition?>();
    this.etag = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.role = Output.createUnknown<String>();
    this.tagKey = Output.createUnknown<String>();
  }
}
