import 'package:pulumi/pulumi.dart';
import 'tag_value_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Tags TagValue. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagValueIamPolicy`" pulumi-lang-go="`tags.TagValueIamPolicy`" pulumi-lang-python="`tags.TagValueIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagValueIamPolicy`" pulumi-lang-java="`gcp.tags.TagValueIamPolicy`">`gcp.tags.TagValueIamPolicy`</span>: Authoritative. Sets the IAM policy for the tagvalue and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagValueIamBinding`" pulumi-lang-go="`tags.TagValueIamBinding`" pulumi-lang-python="`tags.TagValueIamBinding`" pulumi-lang-yaml="`gcp.tags.TagValueIamBinding`" pulumi-lang-java="`gcp.tags.TagValueIamBinding`">`gcp.tags.TagValueIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tagvalue are preserved.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamMember`" pulumi-lang-dotnet="`gcp.tags.TagValueIamMember`" pulumi-lang-go="`tags.TagValueIamMember`" pulumi-lang-python="`tags.TagValueIamMember`" pulumi-lang-yaml="`gcp.tags.TagValueIamMember`" pulumi-lang-java="`gcp.tags.TagValueIamMember`">`gcp.tags.TagValueIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tagvalue are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagValueIamPolicy`" pulumi-lang-go="`tags.TagValueIamPolicy`" pulumi-lang-python="`tags.TagValueIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagValueIamPolicy`" pulumi-lang-java="`gcp.tags.TagValueIamPolicy`">`gcp.tags.TagValueIamPolicy`</span>: Retrieves the IAM policy for the tagvalue
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagValueIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagValueIamPolicy`" pulumi-lang-go="`tags.TagValueIamPolicy`" pulumi-lang-python="`tags.TagValueIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagValueIamPolicy`" pulumi-lang-java="`gcp.tags.TagValueIamPolicy`">`gcp.tags.TagValueIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagValueIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagValueIamBinding`" pulumi-lang-go="`tags.TagValueIamBinding`" pulumi-lang-python="`tags.TagValueIamBinding`" pulumi-lang-yaml="`gcp.tags.TagValueIamBinding`" pulumi-lang-java="`gcp.tags.TagValueIamBinding`">`gcp.tags.TagValueIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.tags.TagValueIamMember`" pulumi-lang-dotnet="`gcp.tags.TagValueIamMember`" pulumi-lang-go="`tags.TagValueIamMember`" pulumi-lang-python="`tags.TagValueIamMember`" pulumi-lang-yaml="`gcp.tags.TagValueIamMember`" pulumi-lang-java="`gcp.tags.TagValueIamMember`">`gcp.tags.TagValueIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagValueIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagValueIamBinding`" pulumi-lang-go="`tags.TagValueIamBinding`" pulumi-lang-python="`tags.TagValueIamBinding`" pulumi-lang-yaml="`gcp.tags.TagValueIamBinding`" pulumi-lang-java="`gcp.tags.TagValueIamBinding`">`gcp.tags.TagValueIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagValueIamMember`" pulumi-lang-dotnet="`gcp.tags.TagValueIamMember`" pulumi-lang-go="`tags.TagValueIamMember`" pulumi-lang-python="`tags.TagValueIamMember`" pulumi-lang-yaml="`gcp.tags.TagValueIamMember`" pulumi-lang-java="`gcp.tags.TagValueIamMember`">`gcp.tags.TagValueIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagValueIamPolicy
/// " pulumi-lang-dotnet=" gcp.tags.TagValueIamPolicy
/// " pulumi-lang-go=" tags.TagValueIamPolicy
/// " pulumi-lang-python=" tags.TagValueIamPolicy
/// " pulumi-lang-yaml=" gcp.tags.TagValueIamPolicy
/// " pulumi-lang-java=" gcp.tags.TagValueIamPolicy
/// "> gcp.tags.TagValueIamPolicy
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
/// const policy = new gcp.tags.TagValueIamPolicy("policy", {
/// tagValue: value.name,
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
/// policy = gcp.tags.TagValueIamPolicy("policy",
/// tag_value=value["name"],
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
/// var policy = new Gcp.Tags.TagValueIamPolicy("policy", new()
/// {
/// TagValue = @value.Name,
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
/// _, err = tags.NewTagValueIamPolicy(ctx, "policy", &tags.TagValueIamPolicyArgs{
/// TagValue:   pulumi.Any(value.Name),
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
/// import com.pulumi.gcp.tags.TagValueIamPolicy;
/// import com.pulumi.gcp.tags.TagValueIamPolicyArgs;
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
/// var policy = new TagValueIamPolicy("policy", TagValueIamPolicyArgs.builder()
/// .tagValue(value.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:tags:TagValueIamPolicy
/// properties:
/// tagValue: ${value.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagValueIamBinding
/// " pulumi-lang-dotnet=" gcp.tags.TagValueIamBinding
/// " pulumi-lang-go=" tags.TagValueIamBinding
/// " pulumi-lang-python=" tags.TagValueIamBinding
/// " pulumi-lang-yaml=" gcp.tags.TagValueIamBinding
/// " pulumi-lang-java=" gcp.tags.TagValueIamBinding
/// "> gcp.tags.TagValueIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.tags.TagValueIamBinding("binding", {
/// tagValue: value.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.tags.TagValueIamBinding("binding",
/// tag_value=value["name"],
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
/// var binding = new Gcp.Tags.TagValueIamBinding("binding", new()
/// {
/// TagValue = @value.Name,
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
/// _, err := tags.NewTagValueIamBinding(ctx, "binding", &tags.TagValueIamBindingArgs{
/// TagValue: pulumi.Any(value.Name),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.tags.TagValueIamBinding;
/// import com.pulumi.gcp.tags.TagValueIamBindingArgs;
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
/// var binding = new TagValueIamBinding("binding", TagValueIamBindingArgs.builder()
/// .tagValue(value.name())
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
/// type: gcp:tags:TagValueIamBinding
/// properties:
/// tagValue: ${value.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagValueIamMember
/// " pulumi-lang-dotnet=" gcp.tags.TagValueIamMember
/// " pulumi-lang-go=" tags.TagValueIamMember
/// " pulumi-lang-python=" tags.TagValueIamMember
/// " pulumi-lang-yaml=" gcp.tags.TagValueIamMember
/// " pulumi-lang-java=" gcp.tags.TagValueIamMember
/// "> gcp.tags.TagValueIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.tags.TagValueIamMember("member", {
/// tagValue: value.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.tags.TagValueIamMember("member",
/// tag_value=value["name"],
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
/// var member = new Gcp.Tags.TagValueIamMember("member", new()
/// {
/// TagValue = @value.Name,
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
/// _, err := tags.NewTagValueIamMember(ctx, "member", &tags.TagValueIamMemberArgs{
/// TagValue: pulumi.Any(value.Name),
/// Role:     pulumi.String("roles/viewer"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.tags.TagValueIamMember;
/// import com.pulumi.gcp.tags.TagValueIamMemberArgs;
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
/// var member = new TagValueIamMember("member", TagValueIamMemberArgs.builder()
/// .tagValue(value.name())
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
/// type: gcp:tags:TagValueIamMember
/// properties:
/// tagValue: ${value.name}
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
/// # IAM policy for Tags TagValue
///
/// Three different resources help you manage your IAM policy for Tags TagValue. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagValueIamPolicy`" pulumi-lang-go="`tags.TagValueIamPolicy`" pulumi-lang-python="`tags.TagValueIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagValueIamPolicy`" pulumi-lang-java="`gcp.tags.TagValueIamPolicy`">`gcp.tags.TagValueIamPolicy`</span>: Authoritative. Sets the IAM policy for the tagvalue and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagValueIamBinding`" pulumi-lang-go="`tags.TagValueIamBinding`" pulumi-lang-python="`tags.TagValueIamBinding`" pulumi-lang-yaml="`gcp.tags.TagValueIamBinding`" pulumi-lang-java="`gcp.tags.TagValueIamBinding`">`gcp.tags.TagValueIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tagvalue are preserved.
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamMember`" pulumi-lang-dotnet="`gcp.tags.TagValueIamMember`" pulumi-lang-go="`tags.TagValueIamMember`" pulumi-lang-python="`tags.TagValueIamMember`" pulumi-lang-yaml="`gcp.tags.TagValueIamMember`" pulumi-lang-java="`gcp.tags.TagValueIamMember`">`gcp.tags.TagValueIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tagvalue are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.tags.TagValueIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagValueIamPolicy`" pulumi-lang-go="`tags.TagValueIamPolicy`" pulumi-lang-python="`tags.TagValueIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagValueIamPolicy`" pulumi-lang-java="`gcp.tags.TagValueIamPolicy`">`gcp.tags.TagValueIamPolicy`</span>: Retrieves the IAM policy for the tagvalue
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagValueIamPolicy`" pulumi-lang-dotnet="`gcp.tags.TagValueIamPolicy`" pulumi-lang-go="`tags.TagValueIamPolicy`" pulumi-lang-python="`tags.TagValueIamPolicy`" pulumi-lang-yaml="`gcp.tags.TagValueIamPolicy`" pulumi-lang-java="`gcp.tags.TagValueIamPolicy`">`gcp.tags.TagValueIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagValueIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagValueIamBinding`" pulumi-lang-go="`tags.TagValueIamBinding`" pulumi-lang-python="`tags.TagValueIamBinding`" pulumi-lang-yaml="`gcp.tags.TagValueIamBinding`" pulumi-lang-java="`gcp.tags.TagValueIamBinding`">`gcp.tags.TagValueIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.tags.TagValueIamMember`" pulumi-lang-dotnet="`gcp.tags.TagValueIamMember`" pulumi-lang-go="`tags.TagValueIamMember`" pulumi-lang-python="`tags.TagValueIamMember`" pulumi-lang-yaml="`gcp.tags.TagValueIamMember`" pulumi-lang-java="`gcp.tags.TagValueIamMember`">`gcp.tags.TagValueIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.tags.TagValueIamBinding`" pulumi-lang-dotnet="`gcp.tags.TagValueIamBinding`" pulumi-lang-go="`tags.TagValueIamBinding`" pulumi-lang-python="`tags.TagValueIamBinding`" pulumi-lang-yaml="`gcp.tags.TagValueIamBinding`" pulumi-lang-java="`gcp.tags.TagValueIamBinding`">`gcp.tags.TagValueIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.tags.TagValueIamMember`" pulumi-lang-dotnet="`gcp.tags.TagValueIamMember`" pulumi-lang-go="`tags.TagValueIamMember`" pulumi-lang-python="`tags.TagValueIamMember`" pulumi-lang-yaml="`gcp.tags.TagValueIamMember`" pulumi-lang-java="`gcp.tags.TagValueIamMember`">`gcp.tags.TagValueIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagValueIamPolicy
/// " pulumi-lang-dotnet=" gcp.tags.TagValueIamPolicy
/// " pulumi-lang-go=" tags.TagValueIamPolicy
/// " pulumi-lang-python=" tags.TagValueIamPolicy
/// " pulumi-lang-yaml=" gcp.tags.TagValueIamPolicy
/// " pulumi-lang-java=" gcp.tags.TagValueIamPolicy
/// "> gcp.tags.TagValueIamPolicy
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
/// const policy = new gcp.tags.TagValueIamPolicy("policy", {
/// tagValue: value.name,
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
/// policy = gcp.tags.TagValueIamPolicy("policy",
/// tag_value=value["name"],
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
/// var policy = new Gcp.Tags.TagValueIamPolicy("policy", new()
/// {
/// TagValue = @value.Name,
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
/// _, err = tags.NewTagValueIamPolicy(ctx, "policy", &tags.TagValueIamPolicyArgs{
/// TagValue:   pulumi.Any(value.Name),
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
/// import com.pulumi.gcp.tags.TagValueIamPolicy;
/// import com.pulumi.gcp.tags.TagValueIamPolicyArgs;
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
/// var policy = new TagValueIamPolicy("policy", TagValueIamPolicyArgs.builder()
/// .tagValue(value.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:tags:TagValueIamPolicy
/// properties:
/// tagValue: ${value.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagValueIamBinding
/// " pulumi-lang-dotnet=" gcp.tags.TagValueIamBinding
/// " pulumi-lang-go=" tags.TagValueIamBinding
/// " pulumi-lang-python=" tags.TagValueIamBinding
/// " pulumi-lang-yaml=" gcp.tags.TagValueIamBinding
/// " pulumi-lang-java=" gcp.tags.TagValueIamBinding
/// "> gcp.tags.TagValueIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.tags.TagValueIamBinding("binding", {
/// tagValue: value.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.tags.TagValueIamBinding("binding",
/// tag_value=value["name"],
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
/// var binding = new Gcp.Tags.TagValueIamBinding("binding", new()
/// {
/// TagValue = @value.Name,
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
/// _, err := tags.NewTagValueIamBinding(ctx, "binding", &tags.TagValueIamBindingArgs{
/// TagValue: pulumi.Any(value.Name),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.tags.TagValueIamBinding;
/// import com.pulumi.gcp.tags.TagValueIamBindingArgs;
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
/// var binding = new TagValueIamBinding("binding", TagValueIamBindingArgs.builder()
/// .tagValue(value.name())
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
/// type: gcp:tags:TagValueIamBinding
/// properties:
/// tagValue: ${value.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.tags.TagValueIamMember
/// " pulumi-lang-dotnet=" gcp.tags.TagValueIamMember
/// " pulumi-lang-go=" tags.TagValueIamMember
/// " pulumi-lang-python=" tags.TagValueIamMember
/// " pulumi-lang-yaml=" gcp.tags.TagValueIamMember
/// " pulumi-lang-java=" gcp.tags.TagValueIamMember
/// "> gcp.tags.TagValueIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.tags.TagValueIamMember("member", {
/// tagValue: value.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.tags.TagValueIamMember("member",
/// tag_value=value["name"],
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
/// var member = new Gcp.Tags.TagValueIamMember("member", new()
/// {
/// TagValue = @value.Name,
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
/// _, err := tags.NewTagValueIamMember(ctx, "member", &tags.TagValueIamMemberArgs{
/// TagValue: pulumi.Any(value.Name),
/// Role:     pulumi.String("roles/viewer"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.tags.TagValueIamMember;
/// import com.pulumi.gcp.tags.TagValueIamMemberArgs;
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
/// var member = new TagValueIamMember("member", TagValueIamMemberArgs.builder()
/// .tagValue(value.name())
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
/// type: gcp:tags:TagValueIamMember
/// properties:
/// tagValue: ${value.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * tagValues/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Tags tagvalue IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:tags/tagValueIamPolicy:TagValueIamPolicy editor "tagValues/{{tag_value}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:tags/tagValueIamPolicy:TagValueIamPolicy editor "tagValues/{{tag_value}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:tags/tagValueIamPolicy:TagValueIamPolicy editor tagValues/{{tag_value}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TagValueIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> tagValue;

  TagValueIamPolicy(
    String name, {
    TagValueIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagValueIamPolicy:TagValueIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.tagValue = Output.createUnknown<String>();
  }
}
