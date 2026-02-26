import 'package:pulumi/pulumi.dart';
import 'asset_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex Asset. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-go="`dataplex.AssetIamPolicy`" pulumi-lang-python="`dataplex.AssetIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-java="`gcp.dataplex.AssetIamPolicy`">`gcp.dataplex.AssetIamPolicy`</span>: Authoritative. Sets the IAM policy for the asset and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamBinding`" pulumi-lang-go="`dataplex.AssetIamBinding`" pulumi-lang-python="`dataplex.AssetIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AssetIamBinding`" pulumi-lang-java="`gcp.dataplex.AssetIamBinding`">`gcp.dataplex.AssetIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the asset are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamMember`" pulumi-lang-go="`dataplex.AssetIamMember`" pulumi-lang-python="`dataplex.AssetIamMember`" pulumi-lang-yaml="`gcp.dataplex.AssetIamMember`" pulumi-lang-java="`gcp.dataplex.AssetIamMember`">`gcp.dataplex.AssetIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the asset are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-go="`dataplex.AssetIamPolicy`" pulumi-lang-python="`dataplex.AssetIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-java="`gcp.dataplex.AssetIamPolicy`">`gcp.dataplex.AssetIamPolicy`</span>: Retrieves the IAM policy for the asset
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-go="`dataplex.AssetIamPolicy`" pulumi-lang-python="`dataplex.AssetIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-java="`gcp.dataplex.AssetIamPolicy`">`gcp.dataplex.AssetIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamBinding`" pulumi-lang-go="`dataplex.AssetIamBinding`" pulumi-lang-python="`dataplex.AssetIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AssetIamBinding`" pulumi-lang-java="`gcp.dataplex.AssetIamBinding`">`gcp.dataplex.AssetIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamMember`" pulumi-lang-go="`dataplex.AssetIamMember`" pulumi-lang-python="`dataplex.AssetIamMember`" pulumi-lang-yaml="`gcp.dataplex.AssetIamMember`" pulumi-lang-java="`gcp.dataplex.AssetIamMember`">`gcp.dataplex.AssetIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamBinding`" pulumi-lang-go="`dataplex.AssetIamBinding`" pulumi-lang-python="`dataplex.AssetIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AssetIamBinding`" pulumi-lang-java="`gcp.dataplex.AssetIamBinding`">`gcp.dataplex.AssetIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamMember`" pulumi-lang-go="`dataplex.AssetIamMember`" pulumi-lang-python="`dataplex.AssetIamMember`" pulumi-lang-yaml="`gcp.dataplex.AssetIamMember`" pulumi-lang-java="`gcp.dataplex.AssetIamMember`">`gcp.dataplex.AssetIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AssetIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.AssetIamPolicy
/// " pulumi-lang-go=" dataplex.AssetIamPolicy
/// " pulumi-lang-python=" dataplex.AssetIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.AssetIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.AssetIamPolicy
/// "> gcp.dataplex.AssetIamPolicy
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
/// const policy = new gcp.dataplex.AssetIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.dataplexZone,
/// asset: example.name,
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
/// policy = gcp.dataplex.AssetIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["dataplexZone"],
/// asset=example["name"],
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
/// var policy = new Gcp.DataPlex.AssetIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.DataplexZone,
/// Asset = example.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// _, err = dataplex.NewAssetIamPolicy(ctx, "policy", &dataplex.AssetIamPolicyArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.DataplexZone),
/// Asset:        pulumi.Any(example.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.dataplex.AssetIamPolicy;
/// import com.pulumi.gcp.dataplex.AssetIamPolicyArgs;
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
/// var policy = new AssetIamPolicy("policy", AssetIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.dataplexZone())
/// .asset(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:AssetIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.dataplexZone}
/// asset: ${example.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AssetIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.AssetIamBinding
/// " pulumi-lang-go=" dataplex.AssetIamBinding
/// " pulumi-lang-python=" dataplex.AssetIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.AssetIamBinding
/// " pulumi-lang-java=" gcp.dataplex.AssetIamBinding
/// "> gcp.dataplex.AssetIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AssetIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.dataplexZone,
/// asset: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AssetIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["dataplexZone"],
/// asset=example["name"],
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
/// var binding = new Gcp.DataPlex.AssetIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.DataplexZone,
/// Asset = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewAssetIamBinding(ctx, "binding", &dataplex.AssetIamBindingArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.DataplexZone),
/// Asset:        pulumi.Any(example.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.AssetIamBinding;
/// import com.pulumi.gcp.dataplex.AssetIamBindingArgs;
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
/// var binding = new AssetIamBinding("binding", AssetIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.dataplexZone())
/// .asset(example.name())
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
/// type: gcp:dataplex:AssetIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.dataplexZone}
/// asset: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AssetIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.AssetIamMember
/// " pulumi-lang-go=" dataplex.AssetIamMember
/// " pulumi-lang-python=" dataplex.AssetIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.AssetIamMember
/// " pulumi-lang-java=" gcp.dataplex.AssetIamMember
/// "> gcp.dataplex.AssetIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AssetIamMember("member", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.dataplexZone,
/// asset: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AssetIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["dataplexZone"],
/// asset=example["name"],
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
/// var member = new Gcp.DataPlex.AssetIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.DataplexZone,
/// Asset = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewAssetIamMember(ctx, "member", &dataplex.AssetIamMemberArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.DataplexZone),
/// Asset:        pulumi.Any(example.Name),
/// Role:         pulumi.String("roles/viewer"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataplex.AssetIamMember;
/// import com.pulumi.gcp.dataplex.AssetIamMemberArgs;
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
/// var member = new AssetIamMember("member", AssetIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.dataplexZone())
/// .asset(example.name())
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
/// type: gcp:dataplex:AssetIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.dataplexZone}
/// asset: ${example.name}
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
/// # IAM policy for Dataplex Asset
///
/// Three different resources help you manage your IAM policy for Dataplex Asset. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-go="`dataplex.AssetIamPolicy`" pulumi-lang-python="`dataplex.AssetIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-java="`gcp.dataplex.AssetIamPolicy`">`gcp.dataplex.AssetIamPolicy`</span>: Authoritative. Sets the IAM policy for the asset and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamBinding`" pulumi-lang-go="`dataplex.AssetIamBinding`" pulumi-lang-python="`dataplex.AssetIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AssetIamBinding`" pulumi-lang-java="`gcp.dataplex.AssetIamBinding`">`gcp.dataplex.AssetIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the asset are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamMember`" pulumi-lang-go="`dataplex.AssetIamMember`" pulumi-lang-python="`dataplex.AssetIamMember`" pulumi-lang-yaml="`gcp.dataplex.AssetIamMember`" pulumi-lang-java="`gcp.dataplex.AssetIamMember`">`gcp.dataplex.AssetIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the asset are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-go="`dataplex.AssetIamPolicy`" pulumi-lang-python="`dataplex.AssetIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-java="`gcp.dataplex.AssetIamPolicy`">`gcp.dataplex.AssetIamPolicy`</span>: Retrieves the IAM policy for the asset
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-go="`dataplex.AssetIamPolicy`" pulumi-lang-python="`dataplex.AssetIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AssetIamPolicy`" pulumi-lang-java="`gcp.dataplex.AssetIamPolicy`">`gcp.dataplex.AssetIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamBinding`" pulumi-lang-go="`dataplex.AssetIamBinding`" pulumi-lang-python="`dataplex.AssetIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AssetIamBinding`" pulumi-lang-java="`gcp.dataplex.AssetIamBinding`">`gcp.dataplex.AssetIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamMember`" pulumi-lang-go="`dataplex.AssetIamMember`" pulumi-lang-python="`dataplex.AssetIamMember`" pulumi-lang-yaml="`gcp.dataplex.AssetIamMember`" pulumi-lang-java="`gcp.dataplex.AssetIamMember`">`gcp.dataplex.AssetIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamBinding`" pulumi-lang-go="`dataplex.AssetIamBinding`" pulumi-lang-python="`dataplex.AssetIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AssetIamBinding`" pulumi-lang-java="`gcp.dataplex.AssetIamBinding`">`gcp.dataplex.AssetIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AssetIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AssetIamMember`" pulumi-lang-go="`dataplex.AssetIamMember`" pulumi-lang-python="`dataplex.AssetIamMember`" pulumi-lang-yaml="`gcp.dataplex.AssetIamMember`" pulumi-lang-java="`gcp.dataplex.AssetIamMember`">`gcp.dataplex.AssetIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AssetIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.AssetIamPolicy
/// " pulumi-lang-go=" dataplex.AssetIamPolicy
/// " pulumi-lang-python=" dataplex.AssetIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.AssetIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.AssetIamPolicy
/// "> gcp.dataplex.AssetIamPolicy
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
/// const policy = new gcp.dataplex.AssetIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.dataplexZone,
/// asset: example.name,
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
/// policy = gcp.dataplex.AssetIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["dataplexZone"],
/// asset=example["name"],
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
/// var policy = new Gcp.DataPlex.AssetIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.DataplexZone,
/// Asset = example.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// _, err = dataplex.NewAssetIamPolicy(ctx, "policy", &dataplex.AssetIamPolicyArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.DataplexZone),
/// Asset:        pulumi.Any(example.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.dataplex.AssetIamPolicy;
/// import com.pulumi.gcp.dataplex.AssetIamPolicyArgs;
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
/// var policy = new AssetIamPolicy("policy", AssetIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.dataplexZone())
/// .asset(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:AssetIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.dataplexZone}
/// asset: ${example.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AssetIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.AssetIamBinding
/// " pulumi-lang-go=" dataplex.AssetIamBinding
/// " pulumi-lang-python=" dataplex.AssetIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.AssetIamBinding
/// " pulumi-lang-java=" gcp.dataplex.AssetIamBinding
/// "> gcp.dataplex.AssetIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AssetIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.dataplexZone,
/// asset: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AssetIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["dataplexZone"],
/// asset=example["name"],
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
/// var binding = new Gcp.DataPlex.AssetIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.DataplexZone,
/// Asset = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewAssetIamBinding(ctx, "binding", &dataplex.AssetIamBindingArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.DataplexZone),
/// Asset:        pulumi.Any(example.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.AssetIamBinding;
/// import com.pulumi.gcp.dataplex.AssetIamBindingArgs;
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
/// var binding = new AssetIamBinding("binding", AssetIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.dataplexZone())
/// .asset(example.name())
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
/// type: gcp:dataplex:AssetIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.dataplexZone}
/// asset: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AssetIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.AssetIamMember
/// " pulumi-lang-go=" dataplex.AssetIamMember
/// " pulumi-lang-python=" dataplex.AssetIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.AssetIamMember
/// " pulumi-lang-java=" gcp.dataplex.AssetIamMember
/// "> gcp.dataplex.AssetIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AssetIamMember("member", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.dataplexZone,
/// asset: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AssetIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["dataplexZone"],
/// asset=example["name"],
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
/// var member = new Gcp.DataPlex.AssetIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.DataplexZone,
/// Asset = example.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewAssetIamMember(ctx, "member", &dataplex.AssetIamMemberArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.DataplexZone),
/// Asset:        pulumi.Any(example.Name),
/// Role:         pulumi.String("roles/viewer"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataplex.AssetIamMember;
/// import com.pulumi.gcp.dataplex.AssetIamMemberArgs;
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
/// var member = new AssetIamMember("member", AssetIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.dataplexZone())
/// .asset(example.name())
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
/// type: gcp:dataplex:AssetIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.dataplexZone}
/// asset: ${example.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}
///
/// * {{project}}/{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
///
/// * {{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex asset IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/assetIamPolicy:AssetIamPolicy editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{asset}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/assetIamPolicy:AssetIamPolicy editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{asset}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/assetIamPolicy:AssetIamPolicy editor projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{asset}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AssetIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> asset;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> dataplexZone;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> lake;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  AssetIamPolicy(
    String name, {
    AssetIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/assetIamPolicy:AssetIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.asset = registerOutput<String>('asset');
    this.dataplexZone = registerOutput<String>('dataplexZone');
    this.etag = registerOutput<String>('etag');
    this.lake = registerOutput<String>('lake');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
