import 'package:pulumi/pulumi.dart';
import '../zone_iam_member_condition/zone_iam_member_condition.dart';
import 'zone_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex Zone. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-go="`dataplex.ZoneIamPolicy`" pulumi-lang-python="`dataplex.ZoneIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-java="`gcp.dataplex.ZoneIamPolicy`">`gcp.dataplex.ZoneIamPolicy`</span>: Authoritative. Sets the IAM policy for the zone and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the zone are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamMember`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamMember`" pulumi-lang-go="`dataplex.ZoneIamMember`" pulumi-lang-python="`dataplex.ZoneIamMember`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamMember`" pulumi-lang-java="`gcp.dataplex.ZoneIamMember`">`gcp.dataplex.ZoneIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the zone are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-go="`dataplex.ZoneIamPolicy`" pulumi-lang-python="`dataplex.ZoneIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-java="`gcp.dataplex.ZoneIamPolicy`">`gcp.dataplex.ZoneIamPolicy`</span>: Retrieves the IAM policy for the zone
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-go="`dataplex.ZoneIamPolicy`" pulumi-lang-python="`dataplex.ZoneIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-java="`gcp.dataplex.ZoneIamPolicy`">`gcp.dataplex.ZoneIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamMember`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamMember`" pulumi-lang-go="`dataplex.ZoneIamMember`" pulumi-lang-python="`dataplex.ZoneIamMember`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamMember`" pulumi-lang-java="`gcp.dataplex.ZoneIamMember`">`gcp.dataplex.ZoneIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamMember`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamMember`" pulumi-lang-go="`dataplex.ZoneIamMember`" pulumi-lang-python="`dataplex.ZoneIamMember`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamMember`" pulumi-lang-java="`gcp.dataplex.ZoneIamMember`">`gcp.dataplex.ZoneIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.ZoneIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.ZoneIamPolicy
/// " pulumi-lang-go=" dataplex.ZoneIamPolicy
/// " pulumi-lang-python=" dataplex.ZoneIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.ZoneIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.ZoneIamPolicy
/// "> gcp.dataplex.ZoneIamPolicy
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
/// const policy = new gcp.dataplex.ZoneIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
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
/// policy = gcp.dataplex.ZoneIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"],
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
/// var policy = new Gcp.DataPlex.ZoneIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
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
/// _, err = dataplex.NewZoneIamPolicy(ctx, "policy", &dataplex.ZoneIamPolicyArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.dataplex.ZoneIamPolicy;
/// import com.pulumi.gcp.dataplex.ZoneIamPolicyArgs;
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
/// var policy = new ZoneIamPolicy("policy", ZoneIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:ZoneIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.ZoneIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.ZoneIamBinding
/// " pulumi-lang-go=" dataplex.ZoneIamBinding
/// " pulumi-lang-python=" dataplex.ZoneIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.ZoneIamBinding
/// " pulumi-lang-java=" gcp.dataplex.ZoneIamBinding
/// "> gcp.dataplex.ZoneIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.ZoneIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.ZoneIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"],
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
/// var binding = new Gcp.DataPlex.ZoneIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
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
/// _, err := dataplex.NewZoneIamBinding(ctx, "binding", &dataplex.ZoneIamBindingArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.dataplex.ZoneIamBinding;
/// import com.pulumi.gcp.dataplex.ZoneIamBindingArgs;
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
/// var binding = new ZoneIamBinding("binding", ZoneIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
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
/// type: gcp:dataplex:ZoneIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.ZoneIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.ZoneIamMember
/// " pulumi-lang-go=" dataplex.ZoneIamMember
/// " pulumi-lang-python=" dataplex.ZoneIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.ZoneIamMember
/// " pulumi-lang-java=" gcp.dataplex.ZoneIamMember
/// "> gcp.dataplex.ZoneIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.ZoneIamMember("member", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.ZoneIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"],
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
/// var member = new Gcp.DataPlex.ZoneIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
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
/// _, err := dataplex.NewZoneIamMember(ctx, "member", &dataplex.ZoneIamMemberArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.dataplex.ZoneIamMember;
/// import com.pulumi.gcp.dataplex.ZoneIamMemberArgs;
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
/// var member = new ZoneIamMember("member", ZoneIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
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
/// type: gcp:dataplex:ZoneIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
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
/// # IAM policy for Dataplex Zone
///
/// Three different resources help you manage your IAM policy for Dataplex Zone. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-go="`dataplex.ZoneIamPolicy`" pulumi-lang-python="`dataplex.ZoneIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-java="`gcp.dataplex.ZoneIamPolicy`">`gcp.dataplex.ZoneIamPolicy`</span>: Authoritative. Sets the IAM policy for the zone and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the zone are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamMember`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamMember`" pulumi-lang-go="`dataplex.ZoneIamMember`" pulumi-lang-python="`dataplex.ZoneIamMember`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamMember`" pulumi-lang-java="`gcp.dataplex.ZoneIamMember`">`gcp.dataplex.ZoneIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the zone are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-go="`dataplex.ZoneIamPolicy`" pulumi-lang-python="`dataplex.ZoneIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-java="`gcp.dataplex.ZoneIamPolicy`">`gcp.dataplex.ZoneIamPolicy`</span>: Retrieves the IAM policy for the zone
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-go="`dataplex.ZoneIamPolicy`" pulumi-lang-python="`dataplex.ZoneIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamPolicy`" pulumi-lang-java="`gcp.dataplex.ZoneIamPolicy`">`gcp.dataplex.ZoneIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamMember`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamMember`" pulumi-lang-go="`dataplex.ZoneIamMember`" pulumi-lang-python="`dataplex.ZoneIamMember`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamMember`" pulumi-lang-java="`gcp.dataplex.ZoneIamMember`">`gcp.dataplex.ZoneIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamMember`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamMember`" pulumi-lang-go="`dataplex.ZoneIamMember`" pulumi-lang-python="`dataplex.ZoneIamMember`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamMember`" pulumi-lang-java="`gcp.dataplex.ZoneIamMember`">`gcp.dataplex.ZoneIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.ZoneIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.ZoneIamPolicy
/// " pulumi-lang-go=" dataplex.ZoneIamPolicy
/// " pulumi-lang-python=" dataplex.ZoneIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.ZoneIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.ZoneIamPolicy
/// "> gcp.dataplex.ZoneIamPolicy
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
/// const policy = new gcp.dataplex.ZoneIamPolicy("policy", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
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
/// policy = gcp.dataplex.ZoneIamPolicy("policy",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"],
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
/// var policy = new Gcp.DataPlex.ZoneIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
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
/// _, err = dataplex.NewZoneIamPolicy(ctx, "policy", &dataplex.ZoneIamPolicyArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.dataplex.ZoneIamPolicy;
/// import com.pulumi.gcp.dataplex.ZoneIamPolicyArgs;
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
/// var policy = new ZoneIamPolicy("policy", ZoneIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:ZoneIamPolicy
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.ZoneIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.ZoneIamBinding
/// " pulumi-lang-go=" dataplex.ZoneIamBinding
/// " pulumi-lang-python=" dataplex.ZoneIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.ZoneIamBinding
/// " pulumi-lang-java=" gcp.dataplex.ZoneIamBinding
/// "> gcp.dataplex.ZoneIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.ZoneIamBinding("binding", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.ZoneIamBinding("binding",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"],
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
/// var binding = new Gcp.DataPlex.ZoneIamBinding("binding", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
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
/// _, err := dataplex.NewZoneIamBinding(ctx, "binding", &dataplex.ZoneIamBindingArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.dataplex.ZoneIamBinding;
/// import com.pulumi.gcp.dataplex.ZoneIamBindingArgs;
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
/// var binding = new ZoneIamBinding("binding", ZoneIamBindingArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
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
/// type: gcp:dataplex:ZoneIamBinding
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.ZoneIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.ZoneIamMember
/// " pulumi-lang-go=" dataplex.ZoneIamMember
/// " pulumi-lang-python=" dataplex.ZoneIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.ZoneIamMember
/// " pulumi-lang-java=" gcp.dataplex.ZoneIamMember
/// "> gcp.dataplex.ZoneIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.ZoneIamMember("member", {
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.ZoneIamMember("member",
/// project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"],
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
/// var member = new Gcp.DataPlex.ZoneIamMember("member", new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
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
/// _, err := dataplex.NewZoneIamMember(ctx, "member", &dataplex.ZoneIamMemberArgs{
/// Project:      pulumi.Any(example.Project),
/// Location:     pulumi.Any(example.Location),
/// Lake:         pulumi.Any(example.Lake),
/// DataplexZone: pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.dataplex.ZoneIamMember;
/// import com.pulumi.gcp.dataplex.ZoneIamMemberArgs;
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
/// var member = new ZoneIamMember("member", ZoneIamMemberArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
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
/// type: gcp:dataplex:ZoneIamMember
/// properties:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{name}}
///
/// * {{project}}/{{location}}/{{lake}}/{{name}}
///
/// * {{location}}/{{lake}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex zone IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/zoneIamMember:ZoneIamMember editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{zone}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/zoneIamMember:ZoneIamMember editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{zone}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/zoneIamMember:ZoneIamMember editor projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{zone}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ZoneIamMember extends CustomResource {
  late final Output<ZoneIamMemberCondition?> condition;

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

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-go="`dataplex.ZoneIamBinding`" pulumi-lang-python="`dataplex.ZoneIamBinding`" pulumi-lang-yaml="`gcp.dataplex.ZoneIamBinding`" pulumi-lang-java="`gcp.dataplex.ZoneIamBinding`">`gcp.dataplex.ZoneIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  ZoneIamMember(
    String name, {
    ZoneIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/zoneIamMember:ZoneIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<ZoneIamMemberCondition?>('condition');
    this.dataplexZone = registerOutput<String>('dataplexZone');
    this.etag = registerOutput<String>('etag');
    this.lake = registerOutput<String>('lake');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
