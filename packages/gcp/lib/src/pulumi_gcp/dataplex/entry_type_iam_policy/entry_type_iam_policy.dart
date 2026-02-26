import 'package:pulumi/pulumi.dart';
import 'entry_type_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex EntryType. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-go="`dataplex.EntryTypeIamPolicy`" pulumi-lang-python="`dataplex.EntryTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamPolicy`">`gcp.dataplex.EntryTypeIamPolicy`</span>: Authoritative. Sets the IAM policy for the entrytype and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-go="`dataplex.EntryTypeIamBinding`" pulumi-lang-python="`dataplex.EntryTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamBinding`">`gcp.dataplex.EntryTypeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the entrytype are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-go="`dataplex.EntryTypeIamMember`" pulumi-lang-python="`dataplex.EntryTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamMember`">`gcp.dataplex.EntryTypeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the entrytype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-go="`dataplex.EntryTypeIamPolicy`" pulumi-lang-python="`dataplex.EntryTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamPolicy`">`gcp.dataplex.EntryTypeIamPolicy`</span>: Retrieves the IAM policy for the entrytype
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-go="`dataplex.EntryTypeIamPolicy`" pulumi-lang-python="`dataplex.EntryTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamPolicy`">`gcp.dataplex.EntryTypeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-go="`dataplex.EntryTypeIamBinding`" pulumi-lang-python="`dataplex.EntryTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamBinding`">`gcp.dataplex.EntryTypeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-go="`dataplex.EntryTypeIamMember`" pulumi-lang-python="`dataplex.EntryTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamMember`">`gcp.dataplex.EntryTypeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-go="`dataplex.EntryTypeIamBinding`" pulumi-lang-python="`dataplex.EntryTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamBinding`">`gcp.dataplex.EntryTypeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-go="`dataplex.EntryTypeIamMember`" pulumi-lang-python="`dataplex.EntryTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamMember`">`gcp.dataplex.EntryTypeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.EntryTypeIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.EntryTypeIamPolicy
/// " pulumi-lang-go=" dataplex.EntryTypeIamPolicy
/// " pulumi-lang-python=" dataplex.EntryTypeIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.EntryTypeIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.EntryTypeIamPolicy
/// "> gcp.dataplex.EntryTypeIamPolicy
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
/// const policy = new gcp.dataplex.EntryTypeIamPolicy("policy", {
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
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
/// policy = gcp.dataplex.EntryTypeIamPolicy("policy",
/// project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"],
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
/// var policy = new Gcp.DataPlex.EntryTypeIamPolicy("policy", new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err = dataplex.NewEntryTypeIamPolicy(ctx, "policy", &dataplex.EntryTypeIamPolicyArgs{
/// Project:     pulumi.Any(testEntryTypeBasic.Project),
/// Location:    pulumi.Any(testEntryTypeBasic.Location),
/// EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicyArgs;
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
/// var policy = new EntryTypeIamPolicy("policy", EntryTypeIamPolicyArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:EntryTypeIamPolicy
/// properties:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.EntryTypeIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.EntryTypeIamBinding
/// " pulumi-lang-go=" dataplex.EntryTypeIamBinding
/// " pulumi-lang-python=" dataplex.EntryTypeIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.EntryTypeIamBinding
/// " pulumi-lang-java=" gcp.dataplex.EntryTypeIamBinding
/// "> gcp.dataplex.EntryTypeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.EntryTypeIamBinding("binding", {
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.EntryTypeIamBinding("binding",
/// project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"],
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
/// var binding = new Gcp.DataPlex.EntryTypeIamBinding("binding", new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err := dataplex.NewEntryTypeIamBinding(ctx, "binding", &dataplex.EntryTypeIamBindingArgs{
/// Project:     pulumi.Any(testEntryTypeBasic.Project),
/// Location:    pulumi.Any(testEntryTypeBasic.Location),
/// EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamBinding;
/// import com.pulumi.gcp.dataplex.EntryTypeIamBindingArgs;
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
/// var binding = new EntryTypeIamBinding("binding", EntryTypeIamBindingArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
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
/// type: gcp:dataplex:EntryTypeIamBinding
/// properties:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.EntryTypeIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.EntryTypeIamMember
/// " pulumi-lang-go=" dataplex.EntryTypeIamMember
/// " pulumi-lang-python=" dataplex.EntryTypeIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.EntryTypeIamMember
/// " pulumi-lang-java=" gcp.dataplex.EntryTypeIamMember
/// "> gcp.dataplex.EntryTypeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.EntryTypeIamMember("member", {
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.EntryTypeIamMember("member",
/// project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"],
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
/// var member = new Gcp.DataPlex.EntryTypeIamMember("member", new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err := dataplex.NewEntryTypeIamMember(ctx, "member", &dataplex.EntryTypeIamMemberArgs{
/// Project:     pulumi.Any(testEntryTypeBasic.Project),
/// Location:    pulumi.Any(testEntryTypeBasic.Location),
/// EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamMember;
/// import com.pulumi.gcp.dataplex.EntryTypeIamMemberArgs;
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
/// var member = new EntryTypeIamMember("member", EntryTypeIamMemberArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
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
/// type: gcp:dataplex:EntryTypeIamMember
/// properties:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
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
/// # IAM policy for Dataplex EntryType
///
/// Three different resources help you manage your IAM policy for Dataplex EntryType. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-go="`dataplex.EntryTypeIamPolicy`" pulumi-lang-python="`dataplex.EntryTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamPolicy`">`gcp.dataplex.EntryTypeIamPolicy`</span>: Authoritative. Sets the IAM policy for the entrytype and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-go="`dataplex.EntryTypeIamBinding`" pulumi-lang-python="`dataplex.EntryTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamBinding`">`gcp.dataplex.EntryTypeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the entrytype are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-go="`dataplex.EntryTypeIamMember`" pulumi-lang-python="`dataplex.EntryTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamMember`">`gcp.dataplex.EntryTypeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the entrytype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-go="`dataplex.EntryTypeIamPolicy`" pulumi-lang-python="`dataplex.EntryTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamPolicy`">`gcp.dataplex.EntryTypeIamPolicy`</span>: Retrieves the IAM policy for the entrytype
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-go="`dataplex.EntryTypeIamPolicy`" pulumi-lang-python="`dataplex.EntryTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamPolicy`">`gcp.dataplex.EntryTypeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-go="`dataplex.EntryTypeIamBinding`" pulumi-lang-python="`dataplex.EntryTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamBinding`">`gcp.dataplex.EntryTypeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-go="`dataplex.EntryTypeIamMember`" pulumi-lang-python="`dataplex.EntryTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamMember`">`gcp.dataplex.EntryTypeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-go="`dataplex.EntryTypeIamBinding`" pulumi-lang-python="`dataplex.EntryTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamBinding`">`gcp.dataplex.EntryTypeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-go="`dataplex.EntryTypeIamMember`" pulumi-lang-python="`dataplex.EntryTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.EntryTypeIamMember`" pulumi-lang-java="`gcp.dataplex.EntryTypeIamMember`">`gcp.dataplex.EntryTypeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.EntryTypeIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.EntryTypeIamPolicy
/// " pulumi-lang-go=" dataplex.EntryTypeIamPolicy
/// " pulumi-lang-python=" dataplex.EntryTypeIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.EntryTypeIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.EntryTypeIamPolicy
/// "> gcp.dataplex.EntryTypeIamPolicy
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
/// const policy = new gcp.dataplex.EntryTypeIamPolicy("policy", {
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
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
/// policy = gcp.dataplex.EntryTypeIamPolicy("policy",
/// project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"],
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
/// var policy = new Gcp.DataPlex.EntryTypeIamPolicy("policy", new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err = dataplex.NewEntryTypeIamPolicy(ctx, "policy", &dataplex.EntryTypeIamPolicyArgs{
/// Project:     pulumi.Any(testEntryTypeBasic.Project),
/// Location:    pulumi.Any(testEntryTypeBasic.Location),
/// EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicyArgs;
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
/// var policy = new EntryTypeIamPolicy("policy", EntryTypeIamPolicyArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:EntryTypeIamPolicy
/// properties:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.EntryTypeIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.EntryTypeIamBinding
/// " pulumi-lang-go=" dataplex.EntryTypeIamBinding
/// " pulumi-lang-python=" dataplex.EntryTypeIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.EntryTypeIamBinding
/// " pulumi-lang-java=" gcp.dataplex.EntryTypeIamBinding
/// "> gcp.dataplex.EntryTypeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.EntryTypeIamBinding("binding", {
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.EntryTypeIamBinding("binding",
/// project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"],
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
/// var binding = new Gcp.DataPlex.EntryTypeIamBinding("binding", new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err := dataplex.NewEntryTypeIamBinding(ctx, "binding", &dataplex.EntryTypeIamBindingArgs{
/// Project:     pulumi.Any(testEntryTypeBasic.Project),
/// Location:    pulumi.Any(testEntryTypeBasic.Location),
/// EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamBinding;
/// import com.pulumi.gcp.dataplex.EntryTypeIamBindingArgs;
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
/// var binding = new EntryTypeIamBinding("binding", EntryTypeIamBindingArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
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
/// type: gcp:dataplex:EntryTypeIamBinding
/// properties:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.EntryTypeIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.EntryTypeIamMember
/// " pulumi-lang-go=" dataplex.EntryTypeIamMember
/// " pulumi-lang-python=" dataplex.EntryTypeIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.EntryTypeIamMember
/// " pulumi-lang-java=" gcp.dataplex.EntryTypeIamMember
/// "> gcp.dataplex.EntryTypeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.EntryTypeIamMember("member", {
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.EntryTypeIamMember("member",
/// project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"],
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
/// var member = new Gcp.DataPlex.EntryTypeIamMember("member", new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err := dataplex.NewEntryTypeIamMember(ctx, "member", &dataplex.EntryTypeIamMemberArgs{
/// Project:     pulumi.Any(testEntryTypeBasic.Project),
/// Location:    pulumi.Any(testEntryTypeBasic.Location),
/// EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamMember;
/// import com.pulumi.gcp.dataplex.EntryTypeIamMemberArgs;
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
/// var member = new EntryTypeIamMember("member", EntryTypeIamMemberArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
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
/// type: gcp:dataplex:EntryTypeIamMember
/// properties:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}
///
/// * {{project}}/{{location}}/{{entry_type_id}}
///
/// * {{location}}/{{entry_type_id}}
///
/// * {{entry_type_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex entrytype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy editor "projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy editor "projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy editor projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EntryTypeIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> entryTypeId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location where entry type will be created in.
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

  EntryTypeIamPolicy(
    String name, {
    EntryTypeIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.entryTypeId = registerOutput<String>('entryTypeId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
