import 'package:pulumi/pulumi.dart';
import 'iceberg_catalog_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Biglake IcebergCatalog. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-go="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-python="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamPolicy`">`gcp.biglake.IcebergCatalogIamPolicy`</span>: Authoritative. Sets the IAM policy for the icebergcatalog and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-go="`biglake.IcebergCatalogIamBinding`" pulumi-lang-python="`biglake.IcebergCatalogIamBinding`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamBinding`">`gcp.biglake.IcebergCatalogIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergcatalog are preserved.
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-go="`biglake.IcebergCatalogIamMember`" pulumi-lang-python="`biglake.IcebergCatalogIamMember`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamMember`">`gcp.biglake.IcebergCatalogIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergcatalog are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-go="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-python="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamPolicy`">`gcp.biglake.IcebergCatalogIamPolicy`</span>: Retrieves the IAM policy for the icebergcatalog
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-go="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-python="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamPolicy`">`gcp.biglake.IcebergCatalogIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-go="`biglake.IcebergCatalogIamBinding`" pulumi-lang-python="`biglake.IcebergCatalogIamBinding`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamBinding`">`gcp.biglake.IcebergCatalogIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-go="`biglake.IcebergCatalogIamMember`" pulumi-lang-python="`biglake.IcebergCatalogIamMember`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamMember`">`gcp.biglake.IcebergCatalogIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-go="`biglake.IcebergCatalogIamBinding`" pulumi-lang-python="`biglake.IcebergCatalogIamBinding`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamBinding`">`gcp.biglake.IcebergCatalogIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-go="`biglake.IcebergCatalogIamMember`" pulumi-lang-python="`biglake.IcebergCatalogIamMember`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamMember`">`gcp.biglake.IcebergCatalogIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-dotnet=" gcp.biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-go=" biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-python=" biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-yaml=" gcp.biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-java=" gcp.biglake.IcebergCatalogIamPolicy
/// "> gcp.biglake.IcebergCatalogIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/biglake.editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.biglake.IcebergCatalogIamPolicy("policy", {
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/biglake.editor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.biglake.IcebergCatalogIamPolicy("policy",
/// project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"],
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
/// Role = "roles/biglake.editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.BigLake.IcebergCatalogIamPolicy("policy", new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/biglake.editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = biglake.NewIcebergCatalogIamPolicy(ctx, "policy", &biglake.IcebergCatalogIamPolicyArgs{
/// Project:    pulumi.Any(myIcebergCatalog.Project),
/// Name:       pulumi.Any(myIcebergCatalog.Name),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicyArgs;
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
/// .role("roles/biglake.editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new IcebergCatalogIamPolicy("policy", IcebergCatalogIamPolicyArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:biglake:IcebergCatalogIamPolicy
/// properties:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/biglake.editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.biglake.IcebergCatalogIamBinding
/// " pulumi-lang-dotnet=" gcp.biglake.IcebergCatalogIamBinding
/// " pulumi-lang-go=" biglake.IcebergCatalogIamBinding
/// " pulumi-lang-python=" biglake.IcebergCatalogIamBinding
/// " pulumi-lang-yaml=" gcp.biglake.IcebergCatalogIamBinding
/// " pulumi-lang-java=" gcp.biglake.IcebergCatalogIamBinding
/// "> gcp.biglake.IcebergCatalogIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergCatalogIamBinding("binding", {
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// role: "roles/biglake.editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergCatalogIamBinding("binding",
/// project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"],
/// role="roles/biglake.editor",
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
/// var binding = new Gcp.BigLake.IcebergCatalogIamBinding("binding", new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// Role = "roles/biglake.editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := biglake.NewIcebergCatalogIamBinding(ctx, "binding", &biglake.IcebergCatalogIamBindingArgs{
/// Project: pulumi.Any(myIcebergCatalog.Project),
/// Name:    pulumi.Any(myIcebergCatalog.Name),
/// Role:    pulumi.String("roles/biglake.editor"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBinding;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBindingArgs;
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
/// var binding = new IcebergCatalogIamBinding("binding", IcebergCatalogIamBindingArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .role("roles/biglake.editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:biglake:IcebergCatalogIamBinding
/// properties:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// role: roles/biglake.editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.biglake.IcebergCatalogIamMember
/// " pulumi-lang-dotnet=" gcp.biglake.IcebergCatalogIamMember
/// " pulumi-lang-go=" biglake.IcebergCatalogIamMember
/// " pulumi-lang-python=" biglake.IcebergCatalogIamMember
/// " pulumi-lang-yaml=" gcp.biglake.IcebergCatalogIamMember
/// " pulumi-lang-java=" gcp.biglake.IcebergCatalogIamMember
/// "> gcp.biglake.IcebergCatalogIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergCatalogIamMember("member", {
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// role: "roles/biglake.editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergCatalogIamMember("member",
/// project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"],
/// role="roles/biglake.editor",
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
/// var member = new Gcp.BigLake.IcebergCatalogIamMember("member", new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// Role = "roles/biglake.editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := biglake.NewIcebergCatalogIamMember(ctx, "member", &biglake.IcebergCatalogIamMemberArgs{
/// Project: pulumi.Any(myIcebergCatalog.Project),
/// Name:    pulumi.Any(myIcebergCatalog.Name),
/// Role:    pulumi.String("roles/biglake.editor"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMember;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMemberArgs;
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
/// var member = new IcebergCatalogIamMember("member", IcebergCatalogIamMemberArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .role("roles/biglake.editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:biglake:IcebergCatalogIamMember
/// properties:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// role: roles/biglake.editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Biglake IcebergCatalog
///
/// Three different resources help you manage your IAM policy for Biglake IcebergCatalog. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-go="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-python="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamPolicy`">`gcp.biglake.IcebergCatalogIamPolicy`</span>: Authoritative. Sets the IAM policy for the icebergcatalog and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-go="`biglake.IcebergCatalogIamBinding`" pulumi-lang-python="`biglake.IcebergCatalogIamBinding`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamBinding`">`gcp.biglake.IcebergCatalogIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergcatalog are preserved.
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-go="`biglake.IcebergCatalogIamMember`" pulumi-lang-python="`biglake.IcebergCatalogIamMember`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamMember`">`gcp.biglake.IcebergCatalogIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergcatalog are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-go="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-python="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamPolicy`">`gcp.biglake.IcebergCatalogIamPolicy`</span>: Retrieves the IAM policy for the icebergcatalog
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-go="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-python="`biglake.IcebergCatalogIamPolicy`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamPolicy`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamPolicy`">`gcp.biglake.IcebergCatalogIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-go="`biglake.IcebergCatalogIamBinding`" pulumi-lang-python="`biglake.IcebergCatalogIamBinding`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamBinding`">`gcp.biglake.IcebergCatalogIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-go="`biglake.IcebergCatalogIamMember`" pulumi-lang-python="`biglake.IcebergCatalogIamMember`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamMember`">`gcp.biglake.IcebergCatalogIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-go="`biglake.IcebergCatalogIamBinding`" pulumi-lang-python="`biglake.IcebergCatalogIamBinding`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamBinding`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamBinding`">`gcp.biglake.IcebergCatalogIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-dotnet="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-go="`biglake.IcebergCatalogIamMember`" pulumi-lang-python="`biglake.IcebergCatalogIamMember`" pulumi-lang-yaml="`gcp.biglake.IcebergCatalogIamMember`" pulumi-lang-java="`gcp.biglake.IcebergCatalogIamMember`">`gcp.biglake.IcebergCatalogIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-dotnet=" gcp.biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-go=" biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-python=" biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-yaml=" gcp.biglake.IcebergCatalogIamPolicy
/// " pulumi-lang-java=" gcp.biglake.IcebergCatalogIamPolicy
/// "> gcp.biglake.IcebergCatalogIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/biglake.editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.biglake.IcebergCatalogIamPolicy("policy", {
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/biglake.editor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.biglake.IcebergCatalogIamPolicy("policy",
/// project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"],
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
/// Role = "roles/biglake.editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.BigLake.IcebergCatalogIamPolicy("policy", new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/biglake.editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = biglake.NewIcebergCatalogIamPolicy(ctx, "policy", &biglake.IcebergCatalogIamPolicyArgs{
/// Project:    pulumi.Any(myIcebergCatalog.Project),
/// Name:       pulumi.Any(myIcebergCatalog.Name),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicyArgs;
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
/// .role("roles/biglake.editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new IcebergCatalogIamPolicy("policy", IcebergCatalogIamPolicyArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:biglake:IcebergCatalogIamPolicy
/// properties:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/biglake.editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.biglake.IcebergCatalogIamBinding
/// " pulumi-lang-dotnet=" gcp.biglake.IcebergCatalogIamBinding
/// " pulumi-lang-go=" biglake.IcebergCatalogIamBinding
/// " pulumi-lang-python=" biglake.IcebergCatalogIamBinding
/// " pulumi-lang-yaml=" gcp.biglake.IcebergCatalogIamBinding
/// " pulumi-lang-java=" gcp.biglake.IcebergCatalogIamBinding
/// "> gcp.biglake.IcebergCatalogIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergCatalogIamBinding("binding", {
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// role: "roles/biglake.editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergCatalogIamBinding("binding",
/// project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"],
/// role="roles/biglake.editor",
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
/// var binding = new Gcp.BigLake.IcebergCatalogIamBinding("binding", new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// Role = "roles/biglake.editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := biglake.NewIcebergCatalogIamBinding(ctx, "binding", &biglake.IcebergCatalogIamBindingArgs{
/// Project: pulumi.Any(myIcebergCatalog.Project),
/// Name:    pulumi.Any(myIcebergCatalog.Name),
/// Role:    pulumi.String("roles/biglake.editor"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBinding;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBindingArgs;
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
/// var binding = new IcebergCatalogIamBinding("binding", IcebergCatalogIamBindingArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .role("roles/biglake.editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:biglake:IcebergCatalogIamBinding
/// properties:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// role: roles/biglake.editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.biglake.IcebergCatalogIamMember
/// " pulumi-lang-dotnet=" gcp.biglake.IcebergCatalogIamMember
/// " pulumi-lang-go=" biglake.IcebergCatalogIamMember
/// " pulumi-lang-python=" biglake.IcebergCatalogIamMember
/// " pulumi-lang-yaml=" gcp.biglake.IcebergCatalogIamMember
/// " pulumi-lang-java=" gcp.biglake.IcebergCatalogIamMember
/// "> gcp.biglake.IcebergCatalogIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergCatalogIamMember("member", {
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// role: "roles/biglake.editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergCatalogIamMember("member",
/// project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"],
/// role="roles/biglake.editor",
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
/// var member = new Gcp.BigLake.IcebergCatalogIamMember("member", new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// Role = "roles/biglake.editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := biglake.NewIcebergCatalogIamMember(ctx, "member", &biglake.IcebergCatalogIamMemberArgs{
/// Project: pulumi.Any(myIcebergCatalog.Project),
/// Name:    pulumi.Any(myIcebergCatalog.Name),
/// Role:    pulumi.String("roles/biglake.editor"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMember;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMemberArgs;
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
/// var member = new IcebergCatalogIamMember("member", IcebergCatalogIamMemberArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .role("roles/biglake.editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:biglake:IcebergCatalogIamMember
/// properties:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// role: roles/biglake.editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Biglake icebergcatalog IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy editor "projects/{{project}}/catalogs/{{iceberg_catalog}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy editor "projects/{{project}}/catalogs/{{iceberg_catalog}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy editor projects/{{project}}/catalogs/{{iceberg_catalog}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IcebergCatalogIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  IcebergCatalogIamPolicy(
    String name, {
    IcebergCatalogIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
