import 'package:pulumi/pulumi.dart';
import '../aspect_type_iam_binding_condition/aspect_type_iam_binding_condition.dart';
import 'aspect_type_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex AspectType. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-go="`dataplex.AspectTypeIamPolicy`" pulumi-lang-python="`dataplex.AspectTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamPolicy`">`gcp.dataplex.AspectTypeIamPolicy`</span>: Authoritative. Sets the IAM policy for the aspecttype and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the aspecttype are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-go="`dataplex.AspectTypeIamMember`" pulumi-lang-python="`dataplex.AspectTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamMember`">`gcp.dataplex.AspectTypeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the aspecttype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-go="`dataplex.AspectTypeIamPolicy`" pulumi-lang-python="`dataplex.AspectTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamPolicy`">`gcp.dataplex.AspectTypeIamPolicy`</span>: Retrieves the IAM policy for the aspecttype
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-go="`dataplex.AspectTypeIamPolicy`" pulumi-lang-python="`dataplex.AspectTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamPolicy`">`gcp.dataplex.AspectTypeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-go="`dataplex.AspectTypeIamMember`" pulumi-lang-python="`dataplex.AspectTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamMember`">`gcp.dataplex.AspectTypeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-go="`dataplex.AspectTypeIamMember`" pulumi-lang-python="`dataplex.AspectTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamMember`">`gcp.dataplex.AspectTypeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AspectTypeIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.AspectTypeIamPolicy
/// " pulumi-lang-go=" dataplex.AspectTypeIamPolicy
/// " pulumi-lang-python=" dataplex.AspectTypeIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.AspectTypeIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.AspectTypeIamPolicy
/// "> gcp.dataplex.AspectTypeIamPolicy
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
/// const policy = new gcp.dataplex.AspectTypeIamPolicy("policy", {
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
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
/// policy = gcp.dataplex.AspectTypeIamPolicy("policy",
/// project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
/// var policy = new Gcp.DataPlex.AspectTypeIamPolicy("policy", new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err = dataplex.NewAspectTypeIamPolicy(ctx, "policy", &dataplex.AspectTypeIamPolicyArgs{
/// Project:      pulumi.Any(testAspectTypeBasic.Project),
/// Location:     pulumi.Any(testAspectTypeBasic.Location),
/// AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicyArgs;
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
/// var policy = new AspectTypeIamPolicy("policy", AspectTypeIamPolicyArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:AspectTypeIamPolicy
/// properties:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AspectTypeIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.AspectTypeIamBinding
/// " pulumi-lang-go=" dataplex.AspectTypeIamBinding
/// " pulumi-lang-python=" dataplex.AspectTypeIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.AspectTypeIamBinding
/// " pulumi-lang-java=" gcp.dataplex.AspectTypeIamBinding
/// "> gcp.dataplex.AspectTypeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AspectTypeIamBinding("binding", {
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AspectTypeIamBinding("binding",
/// project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
/// var binding = new Gcp.DataPlex.AspectTypeIamBinding("binding", new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err := dataplex.NewAspectTypeIamBinding(ctx, "binding", &dataplex.AspectTypeIamBindingArgs{
/// Project:      pulumi.Any(testAspectTypeBasic.Project),
/// Location:     pulumi.Any(testAspectTypeBasic.Location),
/// AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamBinding;
/// import com.pulumi.gcp.dataplex.AspectTypeIamBindingArgs;
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
/// var binding = new AspectTypeIamBinding("binding", AspectTypeIamBindingArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
/// type: gcp:dataplex:AspectTypeIamBinding
/// properties:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AspectTypeIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.AspectTypeIamMember
/// " pulumi-lang-go=" dataplex.AspectTypeIamMember
/// " pulumi-lang-python=" dataplex.AspectTypeIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.AspectTypeIamMember
/// " pulumi-lang-java=" gcp.dataplex.AspectTypeIamMember
/// "> gcp.dataplex.AspectTypeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AspectTypeIamMember("member", {
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AspectTypeIamMember("member",
/// project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
/// var member = new Gcp.DataPlex.AspectTypeIamMember("member", new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err := dataplex.NewAspectTypeIamMember(ctx, "member", &dataplex.AspectTypeIamMemberArgs{
/// Project:      pulumi.Any(testAspectTypeBasic.Project),
/// Location:     pulumi.Any(testAspectTypeBasic.Location),
/// AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamMember;
/// import com.pulumi.gcp.dataplex.AspectTypeIamMemberArgs;
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
/// var member = new AspectTypeIamMember("member", AspectTypeIamMemberArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
/// type: gcp:dataplex:AspectTypeIamMember
/// properties:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
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
/// # IAM policy for Dataplex AspectType
///
/// Three different resources help you manage your IAM policy for Dataplex AspectType. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-go="`dataplex.AspectTypeIamPolicy`" pulumi-lang-python="`dataplex.AspectTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamPolicy`">`gcp.dataplex.AspectTypeIamPolicy`</span>: Authoritative. Sets the IAM policy for the aspecttype and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the aspecttype are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-go="`dataplex.AspectTypeIamMember`" pulumi-lang-python="`dataplex.AspectTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamMember`">`gcp.dataplex.AspectTypeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the aspecttype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-go="`dataplex.AspectTypeIamPolicy`" pulumi-lang-python="`dataplex.AspectTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamPolicy`">`gcp.dataplex.AspectTypeIamPolicy`</span>: Retrieves the IAM policy for the aspecttype
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-go="`dataplex.AspectTypeIamPolicy`" pulumi-lang-python="`dataplex.AspectTypeIamPolicy`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamPolicy`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamPolicy`">`gcp.dataplex.AspectTypeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-go="`dataplex.AspectTypeIamMember`" pulumi-lang-python="`dataplex.AspectTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamMember`">`gcp.dataplex.AspectTypeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-go="`dataplex.AspectTypeIamMember`" pulumi-lang-python="`dataplex.AspectTypeIamMember`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamMember`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamMember`">`gcp.dataplex.AspectTypeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AspectTypeIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataplex.AspectTypeIamPolicy
/// " pulumi-lang-go=" dataplex.AspectTypeIamPolicy
/// " pulumi-lang-python=" dataplex.AspectTypeIamPolicy
/// " pulumi-lang-yaml=" gcp.dataplex.AspectTypeIamPolicy
/// " pulumi-lang-java=" gcp.dataplex.AspectTypeIamPolicy
/// "> gcp.dataplex.AspectTypeIamPolicy
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
/// const policy = new gcp.dataplex.AspectTypeIamPolicy("policy", {
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
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
/// policy = gcp.dataplex.AspectTypeIamPolicy("policy",
/// project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
/// var policy = new Gcp.DataPlex.AspectTypeIamPolicy("policy", new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err = dataplex.NewAspectTypeIamPolicy(ctx, "policy", &dataplex.AspectTypeIamPolicyArgs{
/// Project:      pulumi.Any(testAspectTypeBasic.Project),
/// Location:     pulumi.Any(testAspectTypeBasic.Location),
/// AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicyArgs;
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
/// var policy = new AspectTypeIamPolicy("policy", AspectTypeIamPolicyArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataplex:AspectTypeIamPolicy
/// properties:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AspectTypeIamBinding
/// " pulumi-lang-dotnet=" gcp.dataplex.AspectTypeIamBinding
/// " pulumi-lang-go=" dataplex.AspectTypeIamBinding
/// " pulumi-lang-python=" dataplex.AspectTypeIamBinding
/// " pulumi-lang-yaml=" gcp.dataplex.AspectTypeIamBinding
/// " pulumi-lang-java=" gcp.dataplex.AspectTypeIamBinding
/// "> gcp.dataplex.AspectTypeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AspectTypeIamBinding("binding", {
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AspectTypeIamBinding("binding",
/// project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
/// var binding = new Gcp.DataPlex.AspectTypeIamBinding("binding", new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err := dataplex.NewAspectTypeIamBinding(ctx, "binding", &dataplex.AspectTypeIamBindingArgs{
/// Project:      pulumi.Any(testAspectTypeBasic.Project),
/// Location:     pulumi.Any(testAspectTypeBasic.Location),
/// AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamBinding;
/// import com.pulumi.gcp.dataplex.AspectTypeIamBindingArgs;
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
/// var binding = new AspectTypeIamBinding("binding", AspectTypeIamBindingArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
/// type: gcp:dataplex:AspectTypeIamBinding
/// properties:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataplex.AspectTypeIamMember
/// " pulumi-lang-dotnet=" gcp.dataplex.AspectTypeIamMember
/// " pulumi-lang-go=" dataplex.AspectTypeIamMember
/// " pulumi-lang-python=" dataplex.AspectTypeIamMember
/// " pulumi-lang-yaml=" gcp.dataplex.AspectTypeIamMember
/// " pulumi-lang-java=" gcp.dataplex.AspectTypeIamMember
/// "> gcp.dataplex.AspectTypeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AspectTypeIamMember("member", {
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AspectTypeIamMember("member",
/// project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
/// var member = new Gcp.DataPlex.AspectTypeIamMember("member", new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err := dataplex.NewAspectTypeIamMember(ctx, "member", &dataplex.AspectTypeIamMemberArgs{
/// Project:      pulumi.Any(testAspectTypeBasic.Project),
/// Location:     pulumi.Any(testAspectTypeBasic.Location),
/// AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamMember;
/// import com.pulumi.gcp.dataplex.AspectTypeIamMemberArgs;
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
/// var member = new AspectTypeIamMember("member", AspectTypeIamMemberArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
/// type: gcp:dataplex:AspectTypeIamMember
/// properties:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
///
/// * {{project}}/{{location}}/{{aspect_type_id}}
///
/// * {{location}}/{{aspect_type_id}}
///
/// * {{aspect_type_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex aspecttype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamBinding:AspectTypeIamBinding editor "projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamBinding:AspectTypeIamBinding editor "projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamBinding:AspectTypeIamBinding editor projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AspectTypeIamBinding extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> aspectTypeId;
  late final Output<AspectTypeIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location where aspect type will be created in.
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
  late final Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-dotnet="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-go="`dataplex.AspectTypeIamBinding`" pulumi-lang-python="`dataplex.AspectTypeIamBinding`" pulumi-lang-yaml="`gcp.dataplex.AspectTypeIamBinding`" pulumi-lang-java="`gcp.dataplex.AspectTypeIamBinding`">`gcp.dataplex.AspectTypeIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  AspectTypeIamBinding(
    String name, {
    AspectTypeIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/aspectTypeIamBinding:AspectTypeIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aspectTypeId = registerOutput<String>('aspectTypeId');
    this.condition =
        registerOutput<AspectTypeIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
