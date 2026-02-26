import 'package:pulumi/pulumi.dart';
import 'tag_template_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Data Catalog TagTemplate. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-go="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-python="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamPolicy`">`gcp.datacatalog.TagTemplateIamPolicy`</span>: Authoritative. Sets the IAM policy for the tagtemplate and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-go="`datacatalog.TagTemplateIamBinding`" pulumi-lang-python="`datacatalog.TagTemplateIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamBinding`">`gcp.datacatalog.TagTemplateIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tagtemplate are preserved.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-go="`datacatalog.TagTemplateIamMember`" pulumi-lang-python="`datacatalog.TagTemplateIamMember`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamMember`">`gcp.datacatalog.TagTemplateIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tagtemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-go="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-python="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamPolicy`">`gcp.datacatalog.TagTemplateIamPolicy`</span>: Retrieves the IAM policy for the tagtemplate
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-go="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-python="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamPolicy`">`gcp.datacatalog.TagTemplateIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-go="`datacatalog.TagTemplateIamBinding`" pulumi-lang-python="`datacatalog.TagTemplateIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamBinding`">`gcp.datacatalog.TagTemplateIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-go="`datacatalog.TagTemplateIamMember`" pulumi-lang-python="`datacatalog.TagTemplateIamMember`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamMember`">`gcp.datacatalog.TagTemplateIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-go="`datacatalog.TagTemplateIamBinding`" pulumi-lang-python="`datacatalog.TagTemplateIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamBinding`">`gcp.datacatalog.TagTemplateIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-go="`datacatalog.TagTemplateIamMember`" pulumi-lang-python="`datacatalog.TagTemplateIamMember`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamMember`">`gcp.datacatalog.TagTemplateIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-dotnet=" gcp.datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-go=" datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-python=" datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-yaml=" gcp.datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-java=" gcp.datacatalog.TagTemplateIamPolicy
/// "> gcp.datacatalog.TagTemplateIamPolicy
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
/// const policy = new gcp.datacatalog.TagTemplateIamPolicy("policy", {
/// tagTemplate: basicTagTemplate.name,
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
/// policy = gcp.datacatalog.TagTemplateIamPolicy("policy",
/// tag_template=basic_tag_template["name"],
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
/// var policy = new Gcp.DataCatalog.TagTemplateIamPolicy("policy", new()
/// {
/// TagTemplate = basicTagTemplate.Name,
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
/// _, err = datacatalog.NewTagTemplateIamPolicy(ctx, "policy", &datacatalog.TagTemplateIamPolicyArgs{
/// TagTemplate: pulumi.Any(basicTagTemplate.Name),
/// PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.datacatalog.TagTemplateIamPolicy;
/// import com.pulumi.gcp.datacatalog.TagTemplateIamPolicyArgs;
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
/// var policy = new TagTemplateIamPolicy("policy", TagTemplateIamPolicyArgs.builder()
/// .tagTemplate(basicTagTemplate.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:datacatalog:TagTemplateIamPolicy
/// properties:
/// tagTemplate: ${basicTagTemplate.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.TagTemplateIamBinding
/// " pulumi-lang-dotnet=" gcp.datacatalog.TagTemplateIamBinding
/// " pulumi-lang-go=" datacatalog.TagTemplateIamBinding
/// " pulumi-lang-python=" datacatalog.TagTemplateIamBinding
/// " pulumi-lang-yaml=" gcp.datacatalog.TagTemplateIamBinding
/// " pulumi-lang-java=" gcp.datacatalog.TagTemplateIamBinding
/// "> gcp.datacatalog.TagTemplateIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.datacatalog.TagTemplateIamBinding("binding", {
/// tagTemplate: basicTagTemplate.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.datacatalog.TagTemplateIamBinding("binding",
/// tag_template=basic_tag_template["name"],
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
/// var binding = new Gcp.DataCatalog.TagTemplateIamBinding("binding", new()
/// {
/// TagTemplate = basicTagTemplate.Name,
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
/// _, err := datacatalog.NewTagTemplateIamBinding(ctx, "binding", &datacatalog.TagTemplateIamBindingArgs{
/// TagTemplate: pulumi.Any(basicTagTemplate.Name),
/// Role:        pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.datacatalog.TagTemplateIamBinding;
/// import com.pulumi.gcp.datacatalog.TagTemplateIamBindingArgs;
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
/// var binding = new TagTemplateIamBinding("binding", TagTemplateIamBindingArgs.builder()
/// .tagTemplate(basicTagTemplate.name())
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
/// type: gcp:datacatalog:TagTemplateIamBinding
/// properties:
/// tagTemplate: ${basicTagTemplate.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.TagTemplateIamMember
/// " pulumi-lang-dotnet=" gcp.datacatalog.TagTemplateIamMember
/// " pulumi-lang-go=" datacatalog.TagTemplateIamMember
/// " pulumi-lang-python=" datacatalog.TagTemplateIamMember
/// " pulumi-lang-yaml=" gcp.datacatalog.TagTemplateIamMember
/// " pulumi-lang-java=" gcp.datacatalog.TagTemplateIamMember
/// "> gcp.datacatalog.TagTemplateIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.datacatalog.TagTemplateIamMember("member", {
/// tagTemplate: basicTagTemplate.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.datacatalog.TagTemplateIamMember("member",
/// tag_template=basic_tag_template["name"],
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
/// var member = new Gcp.DataCatalog.TagTemplateIamMember("member", new()
/// {
/// TagTemplate = basicTagTemplate.Name,
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
/// _, err := datacatalog.NewTagTemplateIamMember(ctx, "member", &datacatalog.TagTemplateIamMemberArgs{
/// TagTemplate: pulumi.Any(basicTagTemplate.Name),
/// Role:        pulumi.String("roles/viewer"),
/// Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.datacatalog.TagTemplateIamMember;
/// import com.pulumi.gcp.datacatalog.TagTemplateIamMemberArgs;
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
/// var member = new TagTemplateIamMember("member", TagTemplateIamMemberArgs.builder()
/// .tagTemplate(basicTagTemplate.name())
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
/// type: gcp:datacatalog:TagTemplateIamMember
/// properties:
/// tagTemplate: ${basicTagTemplate.name}
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
/// # IAM policy for Data Catalog TagTemplate
///
/// Three different resources help you manage your IAM policy for Data Catalog TagTemplate. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-go="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-python="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamPolicy`">`gcp.datacatalog.TagTemplateIamPolicy`</span>: Authoritative. Sets the IAM policy for the tagtemplate and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-go="`datacatalog.TagTemplateIamBinding`" pulumi-lang-python="`datacatalog.TagTemplateIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamBinding`">`gcp.datacatalog.TagTemplateIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tagtemplate are preserved.
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-go="`datacatalog.TagTemplateIamMember`" pulumi-lang-python="`datacatalog.TagTemplateIamMember`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamMember`">`gcp.datacatalog.TagTemplateIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tagtemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-go="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-python="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamPolicy`">`gcp.datacatalog.TagTemplateIamPolicy`</span>: Retrieves the IAM policy for the tagtemplate
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-go="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-python="`datacatalog.TagTemplateIamPolicy`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamPolicy`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamPolicy`">`gcp.datacatalog.TagTemplateIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-go="`datacatalog.TagTemplateIamBinding`" pulumi-lang-python="`datacatalog.TagTemplateIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamBinding`">`gcp.datacatalog.TagTemplateIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-go="`datacatalog.TagTemplateIamMember`" pulumi-lang-python="`datacatalog.TagTemplateIamMember`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamMember`">`gcp.datacatalog.TagTemplateIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-go="`datacatalog.TagTemplateIamBinding`" pulumi-lang-python="`datacatalog.TagTemplateIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamBinding`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamBinding`">`gcp.datacatalog.TagTemplateIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-dotnet="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-go="`datacatalog.TagTemplateIamMember`" pulumi-lang-python="`datacatalog.TagTemplateIamMember`" pulumi-lang-yaml="`gcp.datacatalog.TagTemplateIamMember`" pulumi-lang-java="`gcp.datacatalog.TagTemplateIamMember`">`gcp.datacatalog.TagTemplateIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-dotnet=" gcp.datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-go=" datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-python=" datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-yaml=" gcp.datacatalog.TagTemplateIamPolicy
/// " pulumi-lang-java=" gcp.datacatalog.TagTemplateIamPolicy
/// "> gcp.datacatalog.TagTemplateIamPolicy
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
/// const policy = new gcp.datacatalog.TagTemplateIamPolicy("policy", {
/// tagTemplate: basicTagTemplate.name,
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
/// policy = gcp.datacatalog.TagTemplateIamPolicy("policy",
/// tag_template=basic_tag_template["name"],
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
/// var policy = new Gcp.DataCatalog.TagTemplateIamPolicy("policy", new()
/// {
/// TagTemplate = basicTagTemplate.Name,
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
/// _, err = datacatalog.NewTagTemplateIamPolicy(ctx, "policy", &datacatalog.TagTemplateIamPolicyArgs{
/// TagTemplate: pulumi.Any(basicTagTemplate.Name),
/// PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.datacatalog.TagTemplateIamPolicy;
/// import com.pulumi.gcp.datacatalog.TagTemplateIamPolicyArgs;
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
/// var policy = new TagTemplateIamPolicy("policy", TagTemplateIamPolicyArgs.builder()
/// .tagTemplate(basicTagTemplate.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:datacatalog:TagTemplateIamPolicy
/// properties:
/// tagTemplate: ${basicTagTemplate.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.TagTemplateIamBinding
/// " pulumi-lang-dotnet=" gcp.datacatalog.TagTemplateIamBinding
/// " pulumi-lang-go=" datacatalog.TagTemplateIamBinding
/// " pulumi-lang-python=" datacatalog.TagTemplateIamBinding
/// " pulumi-lang-yaml=" gcp.datacatalog.TagTemplateIamBinding
/// " pulumi-lang-java=" gcp.datacatalog.TagTemplateIamBinding
/// "> gcp.datacatalog.TagTemplateIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.datacatalog.TagTemplateIamBinding("binding", {
/// tagTemplate: basicTagTemplate.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.datacatalog.TagTemplateIamBinding("binding",
/// tag_template=basic_tag_template["name"],
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
/// var binding = new Gcp.DataCatalog.TagTemplateIamBinding("binding", new()
/// {
/// TagTemplate = basicTagTemplate.Name,
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
/// _, err := datacatalog.NewTagTemplateIamBinding(ctx, "binding", &datacatalog.TagTemplateIamBindingArgs{
/// TagTemplate: pulumi.Any(basicTagTemplate.Name),
/// Role:        pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.datacatalog.TagTemplateIamBinding;
/// import com.pulumi.gcp.datacatalog.TagTemplateIamBindingArgs;
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
/// var binding = new TagTemplateIamBinding("binding", TagTemplateIamBindingArgs.builder()
/// .tagTemplate(basicTagTemplate.name())
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
/// type: gcp:datacatalog:TagTemplateIamBinding
/// properties:
/// tagTemplate: ${basicTagTemplate.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.datacatalog.TagTemplateIamMember
/// " pulumi-lang-dotnet=" gcp.datacatalog.TagTemplateIamMember
/// " pulumi-lang-go=" datacatalog.TagTemplateIamMember
/// " pulumi-lang-python=" datacatalog.TagTemplateIamMember
/// " pulumi-lang-yaml=" gcp.datacatalog.TagTemplateIamMember
/// " pulumi-lang-java=" gcp.datacatalog.TagTemplateIamMember
/// "> gcp.datacatalog.TagTemplateIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.datacatalog.TagTemplateIamMember("member", {
/// tagTemplate: basicTagTemplate.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.datacatalog.TagTemplateIamMember("member",
/// tag_template=basic_tag_template["name"],
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
/// var member = new Gcp.DataCatalog.TagTemplateIamMember("member", new()
/// {
/// TagTemplate = basicTagTemplate.Name,
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
/// _, err := datacatalog.NewTagTemplateIamMember(ctx, "member", &datacatalog.TagTemplateIamMemberArgs{
/// TagTemplate: pulumi.Any(basicTagTemplate.Name),
/// Role:        pulumi.String("roles/viewer"),
/// Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.datacatalog.TagTemplateIamMember;
/// import com.pulumi.gcp.datacatalog.TagTemplateIamMemberArgs;
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
/// var member = new TagTemplateIamMember("member", TagTemplateIamMemberArgs.builder()
/// .tagTemplate(basicTagTemplate.name())
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
/// type: gcp:datacatalog:TagTemplateIamMember
/// properties:
/// tagTemplate: ${basicTagTemplate.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/tagTemplates/{{tag_template}}
///
/// * {{project}}/{{region}}/{{tag_template}}
///
/// * {{region}}/{{tag_template}}
///
/// * {{tag_template}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Data Catalog tagtemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tagTemplateIamPolicy:TagTemplateIamPolicy editor "projects/{{project}}/locations/{{region}}/tagTemplates/{{tag_template}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tagTemplateIamPolicy:TagTemplateIamPolicy editor "projects/{{project}}/locations/{{region}}/tagTemplates/{{tag_template}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tagTemplateIamPolicy:TagTemplateIamPolicy editor projects/{{project}}/locations/{{region}}/tagTemplates/{{tag_template}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TagTemplateIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Template location region.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> tagTemplate;

  TagTemplateIamPolicy(
    String name, {
    TagTemplateIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/tagTemplateIamPolicy:TagTemplateIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.tagTemplate = registerOutput<String>('tagTemplate');
  }
}
